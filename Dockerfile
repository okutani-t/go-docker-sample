FROM golang:1.17.7-alpine as dev

RUN apk update
RUN apk add git

ENV ROOT=/go/src/app
WORKDIR ${ROOT}

COPY main.go ${ROOT}

EXPOSE 8080

CMD ["go", "run", "main.go"]
