#!/bin/bash




mkdir -p src/tinyos-main/doc/resources/


cat <<EOT >> src/tinyos-main/doc/resources/preamble.tex
% latex 
\usepackage[top=1.1cm, bottom=2cm, left=2cm, right=2cm]{geometry}
% latex
EOT

cat <<EOT >> src/tinyos-main/doc/resources/modules

EOT



sed -i '/^#override.*/i\
BIBS =$(wildcard *.bib)\
SOURCES = $(sort $(wildcard resources/*.tex))\
TEX_STYLE := $(subst $(space),$(comma),$(strip $(SOURCES)))\
TEX_BIBS := $(subst $(space),$(comma),$(strip $(BIBS)))\
PACK = $(shell sed -e "s/\\#.*$$//" -e "/^$$/d" resources/modules)\
PACKAGES := $(subst $(space),$(comma),$(strip $(PACK)))\
' src/tinyos-main/doc/Makefile


sed -i 's/$(RST2LATEX) /$(RST2LATEX) --table-style=booktabs --use-latex-citations --use-latex-docinfo --documentoption=12pt,A4 --stylesheet=$(PACKAGES),$(TEX_STYLE) /g' src/tinyos-main/doc/Makefile


sed -i 's/rm \$/rm -f \$/g' src/tinyos-main/doc/Makefile

sed -i 's/txt\/%.txt | pdf\/tep/txt\/%.txt $(SOURCES)| pdf\/tep/g' src/tinyos-main/doc/Makefile

sed -i 's/pdf\/tep\/%.tex | pdf\/tep/pdf\/tep\/%.tex $(BIBS)| pdf\/tep/g' src/tinyos-main/doc/Makefile


