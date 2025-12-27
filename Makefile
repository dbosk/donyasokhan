.PHONY: all clean

NOTANGLE = notangle
NOWEAVE = noweave

all: donyasokhan.py donyasokhan.pdf

donyasokhan.py: donyasokhan.nw
	${NOTANGLE} -R"[[donyasokhan.py]]" $< > $@

donyasokhan.tex: donyasokhan.nw
	${NOWEAVE} -delay -latex $< > $@

donyasokhan.pdf: donyasokhan.tex
	xelatex $<
	xelatex $<

clean:
	${RM} donyasokhan.py donyasokhan.tex donyasokhan.pdf
	${RM} donyasokhan.aux donyasokhan.log donyasokhan.out donyasokhan.toc
