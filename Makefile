.PHONY: build
build-local:
	pdflatex resume.tex

build-container:
	docker build .
