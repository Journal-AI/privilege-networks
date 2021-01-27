FROM continuumio/miniconda:latest

COPY environment-linux.yml .
RUN conda env create -f environment-linux.yml

RUN apt-get update && apt-get install python3 python3-pip curl wget -y
RUN mkdir /home/project
WORKDIR /home/project
RUN apt-get install git -y
RUN git config --global user.email "aswinkvj@gmail.com"
RUN git config --global user.name "Aswin Vijayakumar"
RUN conda init bash
RUN /opt/conda/envs/backend/bin/pip install shap==0.37.0 matplotlib scikit-learn scipy cvxpy

WORKDIR /home/project

ENTRYPOINT "/bin/bash"