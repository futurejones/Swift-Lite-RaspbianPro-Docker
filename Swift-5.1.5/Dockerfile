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
COPY forcearmv6.diff ./buildSwiftOnARM/swift.diffs/aarch32/
RUN cd buildSwiftOnARM \
    && ./clone_5.1.5_RELEASE.sh \
    && ./patch_5.1.5_RELEASE.sh
