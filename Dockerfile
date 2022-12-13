FROM ubuntu:jammy
WORKDIR /langid
RUN apt-get update && apt-get install -y python2 python-pip
RUN pip2 install --upgrade setuptools 
RUN pip2 install numpy wsgiref
COPY . $WORKDIR 
WORKDIR /langid/langid
CMD python2 langid.py -s -n
