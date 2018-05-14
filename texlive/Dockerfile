FROM ubuntu:18.04
MAINTAINER Chris Clonch <chris@theclonchs.com>

RUN apt-get update -y \
    && apt-get install --no-install-recommends -y \
       chktex \
       latexmk \
       texlive \
       texlive-formats-extra \
       texlive-lang-english \
       texlive-latex-extra \
       texlive-pictures \
       texlive-science \
       texlive-xetex \
    && rm -rf /var/lib/apt/lists/*
