FROM golang:1.11.1

ENV SRC_DIR=/go/src/github.com/app/

ENV GOBIN=/go/bin

WORKDIR $GOBIN

ADD . $SRC_DIR

RUN cd /go/src/;

# mysql のドライバ
RUN go get github.com/go-sql-driver/mysql;

RUN go get github.com/gorilla/mux;

# RUN go install github.com/app/;

# ENTRYPOINT ["./app"]

# EXPOSE 8080

WORKDIR /go/src/gotrading/