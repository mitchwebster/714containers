docker build -t basic-loadbalancer -f Dockerfile .
docker run --rm -p 8080:8080 basic-loadbalancer