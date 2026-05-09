FROM cloudflare/cloudflared:latest

WORKDIR /etc/cloudflared

COPY cloudflared/config.yml ./config.yml

CMD ["/bin/sh", "-c", "echo \"$TUNNEL_JSON\" > /etc/cloudflared/tunnel.json && cloudflared tunnel --config /etc/cloudflared/config.yml run"]