FROM golang:1.16.0-alpine3.13 AS builder
RUN apk add --no-cache git make
RUN git clone https://github.com/chonla/cotton.git /go/src/github.com/chonla/cotton

WORKDIR /go/src/github.com/chonla/cotton

RUN go mod download
RUN make

FROM alpine:3.13.1

COPY --from=builder /go/src/github.com/chonla/cotton/bin/cotton /usr/local/bin
