FROM dkzhang007/grpc-golang-1.0

EXPOSE 50051

RUN go get golang.org/x/net/... && \
    go get golang.org/x/sys/... && \
    go get golang.org/x/text

COPY . $GOPATH/src

RUN go run $GOPATH/src/helloworld/greeter_server/main.go