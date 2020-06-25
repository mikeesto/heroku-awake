FROM alpine

RUN apk add --no-cache curl ca-certificates

ADD run.sh /

ENTRYPOINT ["/run.sh"]