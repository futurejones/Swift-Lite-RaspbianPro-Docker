FROM balenalib/rpi-raspbian:buster 

# Volume to store output package and build logs.
VOLUME ["/output"]

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y git sed wget curl

COPY armv6uname.sh .
RUN mv /bin/uname /bin/uname.orig \
    && mv armv6uname.sh /bin/uname

WORKDIR home

RUN git clone https://github.com/futurejones/buildSwiftOnARM.git

RUN cd buildSwiftOnARM \
    && git checkout swift-5.2-ci \
    && ./swift-5.2-RELEASE/clone_5.2_RELEASE.sh \
    && ./swift-5.2-RELEASE/patch_5.2_RELEASE.sh
