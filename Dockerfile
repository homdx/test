FROM fedora:28

RUN dnf update -y && dnf groupinstall "Development Tools" -y &&  dnf install redhat-rpm-config python3-devel libmaxminddb-devel -y

RUN pip3 install aiohttp aiodns maxminddb

ADD . /app
WORKDIR /app

RUN python3 setup.py install

CMD proxybroker find --types HTTP HTTPS --lvl High --strict -l 100 --outfile ./output/proxies1.txt --format json

#RUN dnf install iputils -y
#CMD ping 127.0.0.1