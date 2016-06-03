FROM alpine:3.4

RUN apk add --update musl python3 && \
    pip3 install -U pip && \
    pip install flask pyjade pyyaml markdown && \
    rm -rf /var/cache/apk/* /root/.[ac]*

CMD ["sh"]


