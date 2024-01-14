FROM adoptopenjdk/openjdk11:jdk-11.0.8_10-alpine
ADD build/libs/notification-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8020

RUN mkdir /conf

VOLUME /conf

ENV EUREKA_HOST=localhost
ENV KAFKA_HOST=localhost
ENV CFG_HOST=localhost
ENV ACCESS_TOKEN_URL="http://localhost:9000/oauth/token"
ENV USER_INFO_URL="http://localhost:9000/user"
ENV TELEGRAM_BOT_TOKEN="/conf/telegram.token"

ENTRYPOINT [ "sh", "-c", "java \
    -Dspring.profiles.active=cloud -jar /app.jar \
    --cloud.config-host=$CFG_HOST --cloud.eureka-host=$EUREKA_HOST --cloud.kafka-host=$KAFKA_HOST \
    --cloud.access-token-url=$ACCESS_TOKEN_URL --cloud.user-info-url=$USER_INFO_URL \
    " ]