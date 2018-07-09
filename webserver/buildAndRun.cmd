REM Useful docker commands:
REM docker system prune -a
REM docker container ls
REM docker images

REM Go commands
REM go get github.com/gorilla/mux

set CGO_ENABLED=0
set GOOS=linux
go build -a -installsuffix cgo -o main .
docker build -t go-basic-webserver -f Dockerfile .
docker run --rm -p 8080:8080 go-basic-webserver