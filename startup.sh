cd /app
caddy start --config /app/Caddyfile --adapter caddyfile
exec nohup ./goravel &
