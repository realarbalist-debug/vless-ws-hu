FROM gojolvl99/gojo-multiplexer:latest

LABEL maintainer="CxlVlns"
LABEL description="V2Ray container with custom config"
LABEL version="1.0"

WORKDIR /etc/v2ray

EXPOSE 8080

COPY config.json /etc/v2ray/config.json

CMD ["v2ray", "-config", "/etc/v2ray/config.json"]
