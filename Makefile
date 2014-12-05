init:
	Rscript bundle.R
	mkdir -p book

%.md: %.Rmd
	Rscript knit.R $^ $(dir $^)

RMD_FILES = $(shell find chapters -name "*.Rmd")
MD_FILES = $(patsubst %.Rmd, %.md, $(RMD_FILES))

book/econometrics-guide.md: $(MD_FILES)
	./my_cat.sh $(MD_FILES) > $@

book/econometrics-guide.pdf: book/econometrics-guide.md
	cd book; pandoc --chapters econometrics-guide.md -o econometrics-guide.pdf
