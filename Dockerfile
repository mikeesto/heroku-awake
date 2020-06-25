FROM alpine

RUN apk add --no-cache curl ca-certificates

ADD run.sh /

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]