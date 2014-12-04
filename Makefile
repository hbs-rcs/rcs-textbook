bundle:
	Rscript bundle.R

%.md: %.Rmd
	./knit.sh $^ $(dir $^)

RMD_FILES = $(shell find chapters -name "*.Rmd")
MD_FILES = $(patsubst %.Rmd, %.md, $(RMD_FILES))

book/econometrics-guide.md: $(MD_FILES)
	mkdir -p book
	./my_cat.sh $(MD_FILES) > $@

book/econometrics-guide.pdf: book/econometrics-guide.md
	cd book; pandoc --chapters econometrics-guide.md -o econometrics-guide.pdf
