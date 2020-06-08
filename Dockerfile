FROM jupyter/datascience-notebook

USER root

RUN git clone --single-branch -b master https://github.com/mathieuboudreau/fsleyes-docker.git; 

RUN chmod -R 777 $HOME/fsleyes-docker

WORKDIR $HOME/fsleyes-docker

USER $NB_UID
