FROM adoptopenjdk/openjdk11:jdk-11.0.8_10-alpine
ADD target/*.jar app.jar

ENV EUREKA_HOST=localhost

ENV JAVA_OPTS="-Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8798,suspend=n"

EXPOSE 8888

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS \
    -jar /app.jar -jar /app.jar --cloud.eureka-host=$EUREKA_HOST \
    "]
