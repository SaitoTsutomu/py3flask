FROM alpine:3.3

RUN apk add --update musl python3 && rm /var/cache/apk/* && pip3 install flask pyjade pyyaml markdown
CMD ["sh"]
