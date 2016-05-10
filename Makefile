TEMPLATE= ./template/intern_report.tex
MARKDOWN= ./src/intern_report.md
BIBLIOGRAPHY= ./bib/stage.bib
OUTPUT=intern_report.pdf

all: pdf

pdf: $(MARKDOWN) $(TEMPLATE)
	pandoc --from markdown --to latex \
		--template $(TEMPLATE) \
		--out $(OUTPUT) \
		--bibliography=$(BIBLIOGRAPHY) \
		--toc \
		$(MARKDOWN)
	
plan: ./src/plan.md $(TEMPLATE)
	pandoc --from markdown --to latex \
		--template $(TEMPLATE) \
		--out plan.pdf \
		--bibliography=$(BIBLIOGRAPHY) \
		--toc \
		./src/plan.md

read:
	okular $(OUTPUT)&

clean:
	rm -rf $(OUTPUT)
