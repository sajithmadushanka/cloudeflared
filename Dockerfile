FROM cloudflare/cloudflared:latest

WORKDIR /etc/cloudflared

COPY cloudflared/config.yml /etc/cloudflared/config.yml

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["printf '%s' \"$TUNNEL_JSON\" > /etc/cloudflared/tunnel.json && exec cloudflared --config /etc/cloudflared/config.yml tunnel run"]