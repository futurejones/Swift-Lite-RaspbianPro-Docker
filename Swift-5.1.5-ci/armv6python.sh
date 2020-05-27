#!/bin/bash

/usr/bin/python.orig "$@" | sed 's/aarch64/armv6l/g'
# /usr/bin/python.orig "$@" | sed 's/armv7l/armv6l/g'
