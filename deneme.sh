#!/bin/bash

#Bot token ve chat ID bilgilerini yaz
BOT_TOKEN="bot_token" 
CHAT_ID="chat_id"
MESSAGE="Merhaba bu bir test mesajıdır."

#Mesaj URL'i oluştur
URL="https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" 

#Mesajı göndermek için curl komutunu kullan
RESPONSE=$(curl -s -X POST "$URL" -d chat_id="$CHAT_ID" -d text="$MESSAGE") 
 
#Durum kontrolü
if [[ $RESPONSE == *'"ok":true'* ]]; then
  echo "Mesaj başarıyla gönderildi."
else
  echo "Mesaj gönderilemedi."   
  echo "Response: $RESPONSE"
fi 
