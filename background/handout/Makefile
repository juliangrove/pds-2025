default:
	nix-shell --pure --run "make handout.pdf"

handout.pdf: handout.tex
	lualatex handout
	biber handout
	lualatex handout

clean:
	rm -f *.aux *.pdf *.bbl *.bcf *.blg *.bcf *.out *.log *.xml *~
