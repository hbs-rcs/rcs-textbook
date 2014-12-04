#!/bin/bash

R \
    -e "library(knitr)" \
    -e "opts_chunk\$set(error=FALSE)" \
    -e "path <- knitr::knit('$1', quiet=TRUE)" \
    -e "file.rename(path, file.path('$2', path))"
