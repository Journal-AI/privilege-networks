FROM ubuntu:18.04

RUN apt-get update && apt-get install python3 python3-pip curl wget -y
RUN mkdir /home/project
WORKDIR /home/project
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
RUN pip3 install cvxpy imageio numpy scipy scikit-learn matplotlib pandas ortools
RUN pip3 install jupyter
RUN pip3 install seaborn
RUN apt-get install git -y
RUN git config --global user.email "aswinkvj@gmail.com"
RUN git config --global user.name "Aswin Vijayakumar"
RUN pip3 install pydotplus IPython shap

WORKDIR /home/project

ENTRYPOINT "/bin/bash"