FROM golang:1.15-alpine3.12
RUN apk add --no-cache git
RUN go get github.com/chonla/cotton

WORKDIR /go/src/github.com/chonla/cotton

RUN go get ./... \
    & make
    & cp ./bin/cotton /usr/local/bin
