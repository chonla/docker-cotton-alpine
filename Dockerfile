FROM golang:1.10.3-alpine3.8
RUN apk add --no-cache git
RUN go get github.com/chonla/cotton

RUN go env GOPATH

WORKDIR /go/src/github.com/chonla/cotton

RUN ls -al

RUN go install .

ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

# RUN go get ./...
CMD ["run.sh"]