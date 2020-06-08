FROM jupyter/base-notebook:8ccdfc1da8d5

USER root

RUN git clone --single-branch -b master https://github.com/mathieuboudreau/fsleyes-docker.git; 

WORKDIR $HOME/work/fsleyes-docker

USER $NB_UID
