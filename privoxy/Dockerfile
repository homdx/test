FROM fedora:28

RUN dnf update -y && dnf install privoxy -y
#RUN dnf install iputils -y

WORKDIR /1
CMD ./start.sh
#CMD ping 127.0.0.1