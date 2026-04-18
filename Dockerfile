FROM gojolvl99/gojo-8n1:latest

LABEL maintainer="Cxlvins"
LABEL description="Cloud Run Xray HTTP Upgrade (VLESS WS+HU)"
LABEL version="3.3"

WORKDIR /etc/xray

COPY config.json /etc/xray/config.json

# Cloud Run uses ONLY one port
EXPOSE 8080

# reduce overhead
ENV XRAY_LOGLEVEL=warning

# run xray
ENTRYPOINT ["xray"]
CMD ["-config", "/etc/xray/config.json"]
