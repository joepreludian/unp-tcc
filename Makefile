build:
	docker run --rm -it -v "$(pwd)":/var/texlive preludian/texlive-pandoc-2015 pdflatex artigo_joey.tex

install:
	sudo docker build -t preludian/texlive-pandoc-2015 .
