FROM gojolvl99/gojo-8n1

LABEL maintainer="CxlVlns"
LABEL description="V2Ray container with custom config"
LABEL version="1.0"

WORKDIR /etc/v2ray

COPY config.json /etc/v2ray/config.json

EXPOSE 8080

CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
