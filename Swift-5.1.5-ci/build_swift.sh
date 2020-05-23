#!/bin/bash

today=`date +%Y-%m-%d`
REL=5.1.5
INSTALL_DIR=/home/install
PACKAGE=/home/output/swift-${REL}-RELEASE-armv6-raspbian-buster_$today.tar.gz

# run update-checkout to create symlink for LLVM Project
#./swift-source/swift/utils/update-checkout --tag swift-5.1.5-RELEASE

./swift/utils/build-script \
    -R \
    --build-subdir buildbot_linux --install-prefix=/usr \
    --install-destdir=${INSTALL_DIR} --installable-package=${PACKAGE} \
    --lldb --llbuild --xctest --foundation --libdispatch \
    -- --install-libdispatch --install-foundation --install-swift --install-lldb --install-llbuild --install-xctest \
    '--swift-install-components=autolink-driver;compiler;clang-builtin-headers;stdlib;swift-remote-mirror;sdk-overlay;dev' \
    --build-swift-static-stdlib --build-swift-static-sdk-overlay
