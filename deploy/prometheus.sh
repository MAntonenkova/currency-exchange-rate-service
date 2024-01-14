docker run --name prometheus -h prometheus \
    --link currency-rate-service-1:currency-rate-service-1 --link currency-rate-service-2:currency-rate-service-2 \
    --link exchange-processing-service:exchange-processing-service --link auth-service:auth-service \
    -v "/work/projects/slurm/java-microservices-course/deploy/prometheus/prometheus.yml":/etc/prometheus/prometheus.yml:ro \
    -d -p 9090:9090 prom/prometheus
