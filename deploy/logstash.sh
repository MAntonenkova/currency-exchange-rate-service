docker run --name logstash -h logstash --link elasticsearch:elasticsearch \
    -v "/work/projects/slurm/java-microservices-course/deploy/conf/pipelines.yml":/usr/share/logstash/config/pipelines.yml:ro \
    -v "/work/projects/slurm/java-microservices-course/deploy/conf":/usr/share/logstash/config/pipelines:ro \
    -d -p 5000:5000 logstash:8.3.3
