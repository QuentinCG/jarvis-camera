#!/usr/bin/env bash

# Install avconv (in libav-tools package)
[[ -z $(which libav-tools) ]] && sudo apt-get --yes --force-yes install libav-tools
