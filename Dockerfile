FROM alpine:latest

# Update and install textlive for LaTex build
# and make sure we run a fresh install each time
RUN apk update && apk add --no-cache texlive-full

# Copy the resume.tex file into the container for the build
COPY resume.tex /resume.tex

# run build export pdf to output directory
RUN pdflatex resume.tex
RUN mkdir -p /output && cp resume.pdf /output/resume.pdf
RUN ls /output
