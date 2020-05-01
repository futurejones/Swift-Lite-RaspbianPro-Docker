<p align="center" style="margin-bottom:60px;">
<img src="https://raw.githubusercontent.com/uraimo/buildSwiftOnARMInfra/master/logo.svg?sanitize=true" width="476"/>
</p>

This repository contains a Dockerfile used to setup a Raspbian Buster Swift build container on an AWS Arm server for Swift-Lite 5.1.1 Release.

Based on https://github.com/uraimo/buildSwiftOnARMInfra


## Usage

Launch an AWS server instance - Ubuntu Server 18.04 LTS (HVM) - 64-bit (Arm) - 100GB SSD

Install git
```
sudo apt update && sudo apt install git
```

Clone repository.
```
    git clone https://github.com/futurejones/Swift-Lite-RaspbianPro-Docker.git
```
Install Docker
```
    ./install_docker.sh
```

Choose Swift version and build your image using the Dockerfile provided:

```
    docker build . --file Dockerfile --tag raspbianpro
```

Once the build phase completes, the resulting image will contain the Swift repository and all the dependencies needed to build Swift-Lite.

To complete the process, create an interactive container:

```
docker run -i -t --name raspbianpro --hostname raspbianpro raspbianpro /bin/bash
```
With 'output' volume:-
```
docker run --name raspbianpro --hostname raspbianpro -v /home/[USER]/output:/output raspbianpro
```

Run `./build_swift-lite.sh` to start building Swift-Lite.

### Supports all Raspberry Pi's running Raspbian Buster

