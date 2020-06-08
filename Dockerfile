FROM jupyter/datascience-notebook

USER root

RUN git clone --single-branch -b master https://github.com/mathieuboudreau/fsleyes-docker.git; 
RUN sudo apt-get update \
    sudo apt-get install fsl-complete;


WORKDIR $HOME/fsleyes-docker

USER $NB_UID
