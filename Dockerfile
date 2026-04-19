FROM gojolvl99/gojo-8n1:latest

LABEL maintainer="CxlVlns"
LABEL description="Xray container with custom config"
LABEL version="1.0"

WORKDIR /etc/xray

COPY config.json /etc/xray/config.json

EXPOSE 8080

CMD ["xray", "run", "-config", "/etc/xray/config.json"]
