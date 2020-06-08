FROM jupyter/datascience-notebook

USER root

RUN git clone --single-branch -b master https://github.com/mathieuboudreau/fsleyes-docker.git; 
RUN wget -O- http://neuro.debian.net/lists/precise.us-nh.full | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list;\
    sudo apt-get update; \
    sudo apt-get install fsl-complete;


WORKDIR $HOME/fsleyes-docker

USER $NB_UID
