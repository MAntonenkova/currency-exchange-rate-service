docker run --name elasticsearch -h elasticsearch \
    -e discovery.type=single-node -e xpack.security.enabled=false -e xpack.security.http.ssl.enabled=false -e xpack.security.transport.ssl.enabled=false \
    -e ES_JAVA_OPTS="-Xms256m -Xmx256m" \
    -v "/srv/db/elastic":/usr/share/elasticsearch/data \
    -d -p 9200:9200 -p 9300:9300 elasticsearch:8.3.3