#!/bin/bash
salida=$(speedtest | grep Result)
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '{"chat_id": "-0123456789ABC", "text": "'"$salida"'", "disable_notification": true}' \
     https://api.telegram.org/botTOKEN-NUMBER/sendMessage
