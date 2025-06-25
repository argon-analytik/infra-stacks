#!/bin/sh
# Usage: promote_backup.sh <PRIMARY_IP>
PRIMARY_IP="$1"
if ! ping -c1 "$PRIMARY_IP" >/dev/null 2>&1; then
  export ROLE=PRIMARY
  docker compose -f vaultwarden.yaml -f authentik.yaml -f psso.yaml -f cloudflared.yaml up -d
fi
