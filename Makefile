.PHONY: build
build-local:
	pdflatex resume.tex

build-container:
	mkdir -p dockerOutput
	docker build --progress=plain --output type=local,dest=./dockerOutput .
	cp dockerOutput/output/resume.pdf .
	rm -rf dockerOutput

