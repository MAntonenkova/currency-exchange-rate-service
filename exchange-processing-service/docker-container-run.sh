#!/bin/bash
docker run -it --name exchange-processing-service -p 8090:8090 -h exchange-processing-service \
  -e DB_HOST="172.17.0.1" -e KAFKA_HOST="172.17.0.1"\
  -e EUREKA_HOST="172.17.0.1" -e ZIPKIN_HOST="172.17.0.1" -e CFG_HOST="172.17.0.1" \
  -e CURRENCY_URL="http://172.17.0.1:8080" \
  -e AUTH_TOKEN_URL="http://172.17.0.1:9000/oauth/check_token" -e USER_INFO_URL="http://172.17.0.1:9000/user" \
  -d exchange-processing-service
