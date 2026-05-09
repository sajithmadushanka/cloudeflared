FROM cloudflare/cloudflared:latest

WORKDIR /etc/cloudflared

COPY cloudflared/config.yml ./config.yml
COPY cloudflared/tunnel.json ./tunnel.json

CMD sh -c 'echo "$TUNNEL_JSON" > /etc/cloudflared/tunnel.json && cloudflared tunnel --config /etc/cloudflared/config.yml run'