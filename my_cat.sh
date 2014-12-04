#!/bin/bash

for f in $@; do (cat "${f}"; echo); done
