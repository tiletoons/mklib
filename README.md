# mklib

<!-- TOC -->
1. [Introduction](#introduction)
2. [Requirements](#requirements)
3. [Installation](#installation)
<!-- /TOC -->

<a name="introduction"></a>
## Introduction

**mklib** provides default configuration and predefined targets for makefiles.

Supported environment variables are:

* `$(SRCDIR)`: Source code directory
* `$(OUTDIR)`: Output directory

For the complete list of predefined targets, issue the following command
from the project's top directory:

```sh
make help
```

<a name="requirementss"></a>
## Requirements

Using **mklib** requires the following software to be present on your system:

* `sh`: The Bourne shell
* `make`: GNU make

<a name="installation"></a>
## Installation

To install **mklib**, issue the following command from the project's top directory:

```sh
make install
```

To access **mklib** functionality, include the following files at the beginning
of your `Makefile`:

```makefile
include ~/.mk/config.mk
include ~/.mk/targets.mk

...
```

---

*Copyright 2021 Tiletoons! Inc.*
