library(knitr)

my_knit <- function(rmd) {
    opts_chunk$set(error=FALSE)

    md <- knit(rmd, quiet=TRUE)
    folder <- gsub('[^/]*$', '', rmd)
    file.rename(md, file.path(folder, md))

    invisible()
}
