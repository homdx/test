This is concept:
1. Compile with Docker from source ProxyBroker and runit
2. Second container is convert result, make privoxy config, and run privoxy

Change proxy setting in you browser to ipdocker:8118 and start browsing.


#### Cloning the repository
Clone recursively to pull-in needed submodule(s):

`$ git clone --recursive https://github.com/homdx/test`

* move file Docker to folder ProxyBroker
`$ mv Dockerfile ProxyBroker/

#### Build and run with docker

`$ docker-compose up`

or

`$ docker-compose up -d`
(Detached mode: Run containers in the background)
