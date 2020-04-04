FROM alpine:3.7

RUN apk add --no-cache --update python3 && \
    pip3 install vdirsyncer && \
    adduser -D -H vdirsyncer
ADD docker-entrypoint.sh /etc/periodic/15min/job
RUN chmod +x /etc/periodic/15min/job

CMD crond -f
