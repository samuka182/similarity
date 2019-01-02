FROM golang:alpine

ENV APP_ENV ${APP_ENV}
ENV PORT 8888
 
ADD . /go/src/similarity

RUN go install similarity

ENTRYPOINT  /go/bin/similarity
 
EXPOSE 8080
