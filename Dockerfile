# Build the pdf
FROM alpine:latest

# update packages and install LaTex library for build
RUN apk update && apk add --no-cache texlive-full

# Copy the resume.tex file into the container for the build
COPY resume.tex /resume.tex

# Create output directory and run build
RUN mkdir -p /output && \
    pdflatex resume.tex && \
    mv resume.pdf /output/resume.pdf

# Generate output directory
FROM scratch AS export
COPY --from=0 /output/resume.pdf resume.pdf
