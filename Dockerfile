FROM jupyter/datascience-notebook

USER root

RUN git clone --single-branch -b master https://github.com/mathieuboudreau/fsleyes-docker.git; 
RUN wget -O- http://neuro.debian.net/lists/bionic.cn-bj1.libre | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list;\
    apt-key adv --recv-keys --keyserver hkp://pool.sks-keyservers.net:80 0xA5D32F012649A5A9;\
    sudo apt-get update; \
    sudo apt-get install fsl-complete;


WORKDIR $HOME/fsleyes-docker

USER $NB_UID
