econometrics-guide.md: econometrics-guide.Rmd
	R -e "library(knitr)" -e "knit('$^')"

econometrics-guide.pdf: econometrics-guide.md
	pandoc --chapters --toc --highlight-style tango econometrics-guide.md -o econometrics-guide.pdf
