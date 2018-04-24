all:
	make -C textgost7.32-2001 install
	xelatex -interaction=nonstopmode whitepaper.tex || true
	xelatex whitepaper.tex

view: all
	evince -s paper.pdf

posters:
	xelatex posters.tex

posters_view: posters
	evince -s posters.pdf
