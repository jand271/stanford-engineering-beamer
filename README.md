# stanford-engineering-beamer
A Stanford Engineering Beamer Template, so that you don't have to make the template yourself.

## Building the Presentation

Pull the image from Docker Hub if it is available. Note that this docker container only contains a minimum latex installation.

```bash
docker pull docker.io/jand271/ubuntu-texlive:ja-dissertation
```

If the image is not available on Docker Hub, you can build it locally with the following command.
```bash
# build the docker image (only do this one time)
docker build -t jand271/ubuntu-texlive:ja-dissertation .
```

Execute the following to compile all of the files into a pdf.
```bash
# create a container, run latexmk, and then destroy container
docker run -v .:/app --rm jand271/ubuntu-texlive:ja-dissertation
```

To use the container in an interactive mode, use the following command.
```bash
docker run -v .:/app -it --entrypoint /bin/bash jand271/ubuntu-texlive:ja-dissertation
```

Then build via latex.
```bash
latexmk -pdf -quiet -interaction=nonstopmode example.tex && latexmk -c example.tex
```

## Docker Hub Image for Github Actions

```bash
# build the docker image locally with the correct tag
# --platform linux/amd64 needed for github actions
docker build -t jand271/ubuntu-texlive:ja-dissertation --platform linux/amd64 .

# push to docker hub
docker push jand271/ubuntu-texlive:ja-dissertation
