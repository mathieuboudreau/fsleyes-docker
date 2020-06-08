FROM jupyter/datascience-notebook

USER root

RUN git clone --single-branch -b master https://github.com/mathieuboudreau/fsleyes-docker.git; 

RUN apt-get update && apt-get install -y fsl python-numpy

RUN chmod -R 777 $HOME/fsleyes-docker

WORKDIR $HOME/fsleyes-docker

USER $NB_UID
