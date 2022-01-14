FROM alpine

WORKDIR /usr/src/app

RUN apk update
RUN apk add grep sed jq curl

COPY . .

ENTRYPOINT [ "/bin/sh", "/usr/src/app/get.sh" ]
