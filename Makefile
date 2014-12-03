bundle:
	Rscript bundle.R

econometrics-guide.md: econometrics-guide.Rmd
	./knit.sh econometrics-guide.Rmd

econometrics-guide.pdf: econometrics-guide.md
	pandoc --chapters econometrics-guide.md -o econometrics-guide.pdf
