#!/bin/bash
docker run -it --name notification-bot -p 8020:8020 \
  -v "/work/projects/slurm/java-microservices-course/notification-bot/conf":/conf:ro \
  -e KAFKA_HOST="172.17.0.1" -e EUREKA_HOST="172.17.0.1" -e CFG_HOST="172.17.0.1" \
  -e ACCESS_TOKEN_URL="http://172.17.0.1:9000/oauth/token" -e USER_INFO_URL="http://172.17.0.1:9000/user" \
  -d notification-bot
