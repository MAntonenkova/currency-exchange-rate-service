#!/bin/bash
docker run -it --name config-service -p 8888:8888 -e EUREKA_HOST="172.17.0.1" -d config-service
