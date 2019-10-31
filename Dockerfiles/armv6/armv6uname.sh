#!/bin/bash

/bin/uname.orig "$@" | sed 's/arm64/armv6l/g'
