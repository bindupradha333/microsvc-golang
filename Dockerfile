FROM golang:1.7.4-alpine

COPY . /go/src/microsvc

RUN cd /go/src/microsvc && CGO_ENABLED=0 go install

ENV PORT 7900
EXPOSE 7900

ENTRYPOINT microsvc