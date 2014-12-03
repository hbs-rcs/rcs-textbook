#!/bin/bash

R -e "path <- knitr::knit('$1', quiet=TRUE)"
