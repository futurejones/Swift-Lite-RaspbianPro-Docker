<p align="center" style="margin-bottom:60px;">
<img src="https://raw.githubusercontent.com/uraimo/buildSwiftOnARMInfra/master/logo.svg?sanitize=true" width="476"/>
</p>

This repository contains a Dockerfile used to setup a Raspbian Buster Swift build container on an AWS Arm server for Swift-Lite 5.1.1 Release.

Based on https://github.com/uraimo/buildSwiftOnARMInfra


## Usage

Build your image using the Dockerfile provided:

```
    docker build . --file Dockerfile.armv6.raspbian.buster --tag raspbianpro
```

Once the build phase completes, the resulting image will contain the Swift repository and all the dependencies needed to build Swift-Lite.

To complete the process, create an interactive container:

```
docker run -i -t --name raspbianpro --hostname raspbianpro raspbianpro /bin/bash
```

And then run `./patch_5.1.1_RELEASE.sh` to checkout the latest supported Swift release, followed by `./build.sh` to start building Swift-Lite.

### Supports all Raspberry Pi's running Raspbian Buster

