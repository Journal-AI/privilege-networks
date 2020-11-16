FROM ubuntu:18.04

RUN apt-get update && apt-get install python3 python3-pip curl wget -y
RUN mkdir /home/project
WORKDIR /home/project
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
RUN pip3 install cvxpy imageio numpy scipy scikit-learn matplotlib pandas or_tools
RUN pip3 install jupyter
RUN pip3 install seaborn

WORKDIR /home/project

ENTRYPOINT "/bin/bash"