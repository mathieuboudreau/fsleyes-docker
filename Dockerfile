FROM continuumio/anaconda:2019.10

USER root

RUN git clone --single-branch -b master https://github.com/mathieuboudreau/fsleyes-docker.git; 

WORKDIR $HOME/work/fsleyes-docker

USER $NB_UID
