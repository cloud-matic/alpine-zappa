FROM alpine:3.5

RUN apk update && \
    apk upgrade

RUN apk add --update py2-pip && rm -rf /var/cache/apk/*

run pip install --upgrade pip
run pip install --upgrade requests[security] pyopenssl ndg-httpsclient pyasn1 flask zappa 

CMD ["/bin/bash"]
