#!/bin/sh

# Add cron entry
echo "$CRON_SCHEDULE /usr/local/bin/npm run cloudflare-refresh --prefix /app/" | crontab -

# Start crond
echo "Starting crond..."
/usr/sbin/crond -l 2 -f
