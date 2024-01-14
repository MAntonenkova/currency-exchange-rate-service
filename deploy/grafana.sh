docker run --name grafana -h grafana \
    -e GF_SECURITY_ADMIN_USER=admin -e GF_SECURITY_ADMIN_PASSWORD=password \
    -d -p 3030:3000 grafana/grafana
