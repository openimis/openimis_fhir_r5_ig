# openIMIS FHIR R5 Implementation Guide

[![Build Status](https://github.com/openimis/openimis_fhir_r5_ig/workflows/CI/badge.svg)](https://github.com/openimis/openimis_fhir_r5_ig/actions)
[![License: CC0-1.0](https://img.shields.io/badge/License-CC0%201.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)

> **⚠️ Draft Status**: This Implementation Guide is currently in draft status and is not intended for production implementation. Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide.

## Overview

The openIMIS FHIR R5 Implementation Guide provides a comprehensive mapping and usage specification for integrating the Open Source Insurance Management Information System (openIMIS) with external healthcare systems using HL7 FHIR R5 standards.

openIMIS offers an intuitive, user-friendly interface to manage complex processes used in health protection schemes, including:

- Beneficiary management
- Health service claims generation, transmission, and review
- Seamless data exchange between beneficiaries, health service providers, and scheme operators

## Features

- **FHIR R5 Compliance**: Built on the latest FHIR R5 standard for maximum interoperability
- **Comprehensive Profiles**: Detailed profiles for Patient, Organization, Location, Claim, and other key resources
- **Multiple Use Cases**: Support for enrollment, enquiry, and claiming workflows
- **CodeSystems**: Extensive code systems for openIMIS-specific data elements
- **Extensions**: Custom extensions to support openIMIS-specific requirements

## Quick Start

### Prerequisites

- Java 11 or higher
- Node.js and npm (for SUSHI)
- Git

### Building the Implementation Guide

1. **Clone the repository**:

   ```bash
   git clone https://github.com/openimis/openimis_fhir_r5_ig.git
   cd openimis_fhir_r5_ig
   ```

2. **Install dependencies**:

   ```bash
   npm install
   ```

3. **Generate the IG once**:

   ```bash
   # On Windows
   .\_genonce.bat

   # On Unix/Linux/Mac
   ./_genonce.sh
   ```

4. **Continuous generation** (for development):

   ```bash
   # On Windows
   .\_gencontinuous.bat

   # On Unix/Linux/Mac
   ./_gencontinuous.sh
   ```

### Project Structure

```
openimis_fhir_r5_ig/
├── input/                          # Source files
│   ├── fsh/                        # FHIR Shorthand files
│   │   ├── profiles/               # Structure definitions
│   │   ├── instances/              # Example instances
│   │   ├── valuesets/              # Value sets
│   │   └── codesystems/            # Code systems
│   ├── pagecontent/                # Markdown content
│   ├── examples/                   # Example resources
│   └── images/                     # Images and diagrams
├── fsh-generated/                  # Generated FHIR resources
├── output/                         # Published IG
├── sushi-config.yaml              # SUSHI configuration
├── ig.ini                         # IG Publisher configuration
└── package.json                   # Node.js dependencies
```

## Use Cases

The Implementation Guide supports three main integration scenarios:

### 1. Enrollment

Point of Service (PoS) enrollment of families/groups within openIMIS, including:

- Patient registration and demographic data
- Family/group composition
- Insurance product selection
- Enrollment officer assignment

### 2. Enquiry

Querying openIMIS for beneficiary information and eligibility:

- Patient/insuree lookup
- Policy status verification
- Service and item eligibility checks
- Coverage details

### 3. Claiming

Healthcare service claim submission and processing:

- Claim creation and submission
- Diagnosis and service coding
- Cost and payment information
- Claim status tracking

## Key Resources

The Implementation Guide defines profiles for the following FHIR resources:

- **Patient**: openIMIS insuree/beneficiary information
- **Group**: Family/household groupings
- **Organization**: Healthcare facilities and insurance organizations
- **Location**: Geographic and administrative locations
- **Practitioner**: Healthcare providers and enrollment officers
- **InsurancePlan**: Available insurance products
- **Contract**: Enrollment and policy information
- **Claim**: Healthcare service claims
- **ClaimResponse**: Claim processing results

## Development

### Prerequisites for Development

- **SUSHI**: FHIR Shorthand compiler
- **IG Publisher**: FHIR Implementation Guide publisher
- **Java**: Required for the IG Publisher

### Making Changes

1. Edit FSH files in the `input/fsh/` directory
2. Update page content in `input/pagecontent/`
3. Run the build process to generate the IG
4. Review changes in the `output/` directory

### Testing

The IG includes comprehensive examples and test cases. After building, validate:

- All profiles compile without errors
- Examples conform to their respective profiles
- Links and references are valid
- Generated narrative is correct

## Contributing

We welcome contributions to improve this Implementation Guide!

### How to Contribute

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Make** your changes
4. **Test** your changes by building the IG
5. **Commit** your changes (`git commit -m 'Add some amazing feature'`)
6. **Push** to the branch (`git push origin feature/amazing-feature`)
7. **Open** a Pull Request

### Code Standards

- Follow FHIR Shorthand (FSH) best practices
- Include comprehensive documentation
- Provide examples for new profiles
- Ensure all builds pass without errors

## Issues and Support

### Reporting Issues

Issues and change requests are managed on GitHub:

**Issues**: [https://github.com/openimis/openimis_fhir_r5_ig/issues](https://github.com/openimis/openimis_fhir_r5_ig/issues)

**Project Board**: [https://github.com/openimis/openimis_fhir_r5_ig/projects](https://github.com/openimis/openimis_fhir_r5_ig/projects)

### Getting Help

- Check the [Implementation Guide documentation](https://openimis.github.io/openimis_fhir_r5_ig)
- Review [FHIR R5 specifications](http://hl7.org/fhir/R5/)
- Contact the development team (see below)

## Contact

**Publisher**: openIMIS Initiative  
**Website**: [https://www.openimis.org](https://www.openimis.org)

**Technical Contacts**:

- **Dragos Dobre** - [dragos.dobre@swisstph.ch](mailto:dragos.dobre@swisstph.ch)
- **Hiren Soni** - [hiren.soni@swisstph.ch](mailto:hiren.soni@swisstph.ch)

**Organization**: Swiss Tropical and Public Health Institute (Swiss TPH)  
**Website**: [https://www.swisstph.ch/en/](https://www.swisstph.ch/en/)

## License

This work is licensed under [CC0 1.0 Universal (CC0 1.0) Public Domain Dedication](http://creativecommons.org/publicdomain/zero/1.0/).

### Third-Party Licenses

Please note that while this implementation guide is licensed as public domain, it includes examples and references to terminologies such as LOINC, SNOMED CT, and others which may have more restrictive licensing requirements. Implementers should familiarize themselves with the licensing and constraints of all terminologies and components used in their implementation.

## Version History

- **v0.1.0** - Initial draft release (current)

---

_This Implementation Guide is developed and maintained by the openIMIS Initiative in collaboration with Swiss TPH._
