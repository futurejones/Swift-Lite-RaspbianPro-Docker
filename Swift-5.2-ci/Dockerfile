# Raspbian Buster
# For Jenkins pipeline
FROM balenalib/rpi-raspbian:buster 

#RUN groupadd -g 998 build-user && \
#    useradd -m -r -u 998 -g build-user build-user

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update

RUN apt-get -y install \
    wget \
    autoconf \
    build-essential \
    clang \
    cmake \
    git \
    icu-devtools \
    libbsd-dev \
    libblocksruntime-dev \
    libcurl4-openssl-dev \
    libedit-dev \
    libicu-dev \
    libncurses5-dev \
    libpython-dev \
    libsqlite3-dev \
    libtool \
    libxml2-dev \
    libz-dev \
    make \
    ninja-build \
    patch \
    pkg-config \
    python \
    python-dev \
    python-six \
    python3 \
    python3-dev \
    python3-distutils \
    python3-six \
    rsync \
    swig \
    systemtap-sdt-dev \
    tzdata \
    unzip \
    uuid-dev \
    zip

RUN wget --content-disposition https://packagecloud.io/swift-arm/build_tools/packages/raspbian/buster/cmake_3.16.6-1-raspbian-buster_armhf.deb/download.deb
RUN apt-get -y install ./cmake_3.16.6-1-raspbian-buster_armhf.deb
RUN rm -rf cmake_3.16.6-1-raspbian-buster_armhf.deb

RUN wget https://github.com/futurejones/Swift-Lite-RaspbianPro-Docker/raw/master/Swift-5.1.5/armv6uname.sh
RUN chmod +x armv6uname.sh
RUN mv /bin/uname /bin/uname.orig \
    && mv armv6uname.sh /bin/uname

#USER build-user

WORKDIR /home
