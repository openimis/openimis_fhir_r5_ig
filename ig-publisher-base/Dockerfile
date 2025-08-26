FROM openjdk:26-jdk-bullseye

RUN apt-get update && apt-get -y install python3 python3-pip gosu openssl wget graphviz build-essential libffi-dev ruby-dev coreutils

# Create symlink for mkdir to fix make compilation issues with Ruby gems
RUN ln -sf /bin/mkdir /usr/bin/mkdir

ENV PATH="/usr/local/rvm/bin:/usr/local/rvm/rubies/ruby-3.1.0/bin:${PATH}"
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
    curl -sSL https://get.rvm.io | bash -s stable && \
    /bin/bash -lc "rvm install 3.1.0 && rvm use 3.1.0 --default && gem install jekyll jekyll-asciidoc"

RUN cd /tmp \
 && wget -q https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz \
 && cd /usr/local \
 && tar --strip-components 1 -xf /tmp/node-v20.17.0-linux-x64.tar.xz

RUN useradd -d /home/publisher -m publisher

USER publisher
RUN mkdir /home/publisher/ig
ENV PATH="/home/publisher/bin:/home/publisher/.node/bin:/home/publisher/.node/lib/node_modules/fsh-sushi/dist/ig/files:${PATH}"
ENV NODE_PATH="/home/publisher/.node/lib/node_modules:${PATH}"

RUN mkdir /home/publisher/.node && \
    echo "prefix = /home/publisher/.node" > /home/publisher/.npmrc

RUN mkdir /home/publisher/bin && \
    printf "#!/bin/sh\n\
            npm install -g fsh-sushi" >>  /home/publisher/bin/with-latest-sushi.sh && \
    chmod +x /home/publisher/bin/with-latest-sushi.sh && \
    /home/publisher/bin/with-latest-sushi.sh

# Following technique from https://gist.github.com/yogeek/bc8dc6dadbb72cb39efadf83920077d3
WORKDIR /home/publisher/ig
VOLUME /home/publisher/ig

USER root
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["bash"]
