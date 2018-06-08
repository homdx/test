#!/bin/bash

#time proxybroker find --types HTTP HTTPS --lvl High --strict -l 100 --outfile ./proxies1.txt --format json
echo "[Wait file with proxi list]"
for (( i = 1; i < 13; i++ ))
{
    echo $i
    sleep 5
if [ ! -f somefile.txt ]; then
    echo "File not found!"
    else
    echo 'Found at ' $i ' attempt'
    i=13
fi
    date
}

echo '[Convert from json file]'
./jsontofile.py
cp -f somefile.txt somefile1.txt
echo '[Setup Python ProxyToolkit]'
time python3.6 -m pip install PyProxyToolkit
echo '[Wait ... Check proxy ...]'
time python3.6 -m PyProxyToolkit.Console -i somefile1.txt -o checked1old.txt
echo '[Generate config file privoxy]'
./makeconfig.py
echo '[Detect docker IP and added to config privoxy]'
./detectip.sh
cp -rf config.txt /etc/privoxy
echo '[Start privoxy]'
privoxy --no-daemon /etc/privoxy/config.txt
