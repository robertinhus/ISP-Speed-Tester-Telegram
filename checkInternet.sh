#!/bin/bash
salida=$(speedtest | grep Result)
curl -X POST \
     -H 'Content-Type: application/json' \
     -d '{"chat_id": "-1002073745168", "text": "'"$salida"'", "disable_notification": true}' \
     https://api.telegram.org/bot6709084114:AAEukJp1ytSdJ-UkduiZuaK5Uo4G2P1lF38/sendMessage
