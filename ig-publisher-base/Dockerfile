FROM openjdk:26-jdk-bullseye

RUN apt-get update && apt-get -y install \
    python3 python3-pip gosu openssl wget graphviz build-essential libffi-dev ruby-dev coreutils \
 && ln -sf /bin/mkdir /usr/bin/mkdir

# --- RVM + Ruby + Jekyll ---
ENV PATH="/usr/local/rvm/bin:/usr/local/rvm/rubies/ruby-3.1.0/bin:${PATH}"
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB \
 && curl -sSL https://get.rvm.io | bash -s stable \
 && /bin/bash -lc "rvm install 3.1.0 && rvm use 3.1.0 --default && gem install bundler jekyll jekyll-asciidoc"

# Make RVM wrappers available on PATH for all users
ENV PATH="/usr/local/rvm/wrappers/ruby-3.1.0:/usr/local/rvm/gems/ruby-3.1.0/bin:/usr/local/rvm/rubies/ruby-3.1.0/bin:/usr/local/rvm/bin:${PATH}"

# Symlinks so Publisher can call jekyll/bundle without RVM env
RUN ln -sf /usr/local/rvm/wrappers/ruby-3.1.0/jekyll /usr/local/bin/jekyll \
 && ln -sf /usr/local/rvm/wrappers/ruby-3.1.0/bundle /usr/local/bin/bundle \
 && which jekyll && jekyll -v

# --- Node 20 LTS for SUSHI ---
RUN cd /tmp \
 && wget -q https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz \
 && cd /usr/local \
 && tar --strip-components 1 -xf /tmp/node-v20.17.0-linux-x64.tar.xz \
 && node -v && npm -v

# --- Non-root user ---
RUN useradd -d /home/publisher -m publisher
USER publisher
RUN mkdir -p /home/publisher/ig /home/publisher/.node /home/publisher/bin

ENV PATH="/home/publisher/bin:/home/publisher/.node/bin:/home/publisher/.node/lib/node_modules/fsh-sushi/dist/ig/files:${PATH}"
# NODE_PATH should NOT include $PATH
ENV NODE_PATH="/home/publisher/.node/lib/node_modules"

# Use a local prefix for global npm installs
RUN echo "prefix = /home/publisher/.node" > /home/publisher/.npmrc

# Install SUSHI latest
RUN printf "#!/bin/sh\nnpm install -g fsh-sushi\n" > /home/publisher/bin/with-latest-sushi.sh \
 && chmod +x /home/publisher/bin/with-latest-sushi.sh \
 && /home/publisher/bin/with-latest-sushi.sh \
 && sushi --version || npx --yes fsh-sushi --version

# Workspace
WORKDIR /home/publisher/ig
VOLUME /home/publisher/ig

# Back to root for entrypoint
USER root
# double-check jekyll is visible to root too
RUN which jekyll && jekyll -v

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["bash"]
