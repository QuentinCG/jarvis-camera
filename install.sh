#!/usr/bin/env bash

# Install avconv (in libav-tools package)
[[ -z $(which libav-tools) ]] && sudo apt-get install libav-tools
