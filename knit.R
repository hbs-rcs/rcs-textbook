library(knitr)

my_knit <- function(rmd, folder) {
    path <- knit(rmd, quiet=TRUE)
    file.rename(path, file.path(folder, path))
}

main <- function() {
    opts_chunk$set(error=FALSE)
    args <- commandArgs(trailingOnly=TRUE)
    invisible(my_knit(args[1], args[2]))
}

main()
