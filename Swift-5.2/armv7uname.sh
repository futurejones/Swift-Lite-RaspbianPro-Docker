#!/bin/bash

/bin/uname.orig "$@" | sed 's/aarch64/armv7l/g'
