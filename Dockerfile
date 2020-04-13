FROM ubuntu:latest
WORKDIR /projet
ENV VAR=localhost
RUN apt-get -y  update && apt-get install -y apt-utils dialog  && apt-get install -y git && apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa -y  && apt-get install -y python3.7
RUN  apt-get install -y  python3-pip python3-dev libxml2-dev libxslt-dev vim  
RUN apt-get install -y libssl-dev libffi-dev
RUN pip3 install "setuptools>=11.3" 
COPY elastalert/ /projet

