FROM alpine:latest

LABEL maintainer="Teddysun <i@teddysun.com>"

WORKDIR /root

COPY config.json /etc/v2ray/config.json

RUN set -ex \
    && apk add --no-cache ca-certificates wget unzip \
    && mkdir -p /usr/bin /usr/share/v2ray /var/log/v2ray \
    && wget -O /tmp/v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip \
    && unzip /tmp/v2ray.zip -d /tmp/v2ray \
    && mv /tmp/v2ray/v2ray /usr/bin/v2ray \
    && chmod +x /usr/bin/v2ray \
    && rm -rf /tmp/v2ray /tmp/v2ray.zip

VOLUME /etc/v2ray

CMD ["/usr/bin/v2ray", "run", "-config", "/etc/v2ray/config.json"]
