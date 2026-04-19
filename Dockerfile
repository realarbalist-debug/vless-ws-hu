FROM gojolvl99/singbox-5s

LABEL maintainer="MrValdez"
LABEL description="V2Ray container with custom config"
LABEL version="1.0"

EXPOSE 8080

COPY config.json /etc/v2ray/config.json

CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
