#!/bin/bash

/bin/uname.orig "$@" | sed 's/aarch64/armv6l/g'
