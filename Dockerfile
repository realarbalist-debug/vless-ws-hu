FROM gojolvl99/gojo-8n1

LABEL maintainer="MrValdez"
LABEL description="V2Ray container with custom config"
LABEL version="1.0"


COPY config.json /etc/v2ray/config.json

CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
