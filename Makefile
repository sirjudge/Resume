.PHONY: build
build-local:
	pdflatex resume.tex

build-container:
	docker build --output type=local,dest=. .
	rm -rf dockerOutput
