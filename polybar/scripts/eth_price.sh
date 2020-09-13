#!/bin/sh


host="1.1.1.1"

if ping -c 2 -q $host > /dev/null 2>&1; then
	DATA=$(curl -s 'https://min-api.cryptocompare.com/data/price?fsym=ETH&tsyms=BTC,USD,EUR' | jq -r '.USD')
else
	DATA=000.00
fi

echo $DATA
