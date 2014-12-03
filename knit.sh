#!/bin/bash

Rscript -e "output <- knitr::knit('$1', quiet=TRUE)"
