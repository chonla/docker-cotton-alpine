FROM golang:1.16.0-alpine3.13 AS builder
RUN apk add --no-cache git make
RUN go get github.com/chonla/cotton

WORKDIR /go/src/github.com/chonla/cotton

RUN make

FROM alpine:3.13.1

COPY --from=builder /go/src/github.com/chonla/cotton/bin/cotton /usr/local/bin
