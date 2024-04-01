
FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y wget perl git

WORKDIR /tmp

# download texlive small installation
RUN wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz 
RUN zcat < install-tl-unx.tar.gz | tar xf -
RUN perl ./install-tl-*/install-tl --no-interaction --scheme=small --paper=letter
RUN apt-get update
RUN apt-get install -y texlive-font-utils
RUN $(find /usr/local/texlive -name tlmgr) path add

# install needed packages
RUN tlmgr init-usertree
RUN tlmgr install latexmk enumitem algorithm2e ifoddpage relsize multirow cleveref
RUN tlmgr install newtx xstring fontaxes pagecolor darkmode
RUN tlmgr install sourcesanspro fontawesome5
RUN tlmgr install animate media9 zref ocgx2 ly1
RUN tlmgr install biber biblatex
RUN $(find /usr/local/texlive -name tlmgr) path add

VOLUME /app
WORKDIR /app

CMD latexmk -pdf -quiet -interaction=nonstopmode example.tex && latexmk -c example.tex
