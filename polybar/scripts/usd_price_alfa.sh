#!/bin/sh

host="1.1.1.1"

if ping -c 2 -q $host > /dev/null 2>&1; then
	DATA=$(curl -s "https://minfin.com.ua/company/alfa-bank/currency/" | grep 'USD' -A 2 -m 1 | tail -n 1)
else
	DATA=00.00
fi

echo ${DATA::5}
