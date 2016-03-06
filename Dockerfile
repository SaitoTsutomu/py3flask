FROM alpine:3.3

RUN apk add --no-cache python3 && \
    apk add --no-cache --virtual=build-dependencies wget && \
    wget -q --no-check-certificate https://bootstrap.pypa.io/get-pip.py -O /dev/stdout | python3 && \
    pip install flask pyjade pyyaml markdown && \
    apk del build-dependencies && \
    rm -rf /root/.[acpw]*
CMD ["sh"]


