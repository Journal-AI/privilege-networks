FROM ubuntu:18.04

RUN apt-get update && apt-get install python3 python3-pip -y
RUN mkdir -p /home/project
WORKDIR /home/project 
COPY get-pip.py .
RUN python3 ./get-pip.py
RUN pip3 install cvxpy imageio numpy scipy scikit-learn matplotlib pandas
RUN pip3 install jupyter
RUN pip3 install seaborn
RUN pip3 install tensorflow 
RUN pip3 install tensorflow_constrained_optimization

ENTRYPOINT "/bin/bash"
