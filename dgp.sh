#!/bin/sh
# inpath - verify that a specified program is either valid as-is,
#   or can be found in the PATH directory list.

#!/bin/bash

while :
	do
		./chia-plotter-linux-amd64 -action plotting -plotting-fpk 0x86f840d440eadb86281daa5abcc08246a1b0ffb5d2934c80b6633f5864c404f224c22ff790f78076c9c8501a7a77a950 -plotting-ppk 0xb176d145768f26a0a84c5591c0b3a7d8096875e44b09b900619ad1e5e6f01d41bc074754f1aef63417452d012ab453b1 -b 6900 -r 4 -d tamam -t gecici -p
		echo "Gönderildi"
		sleep 500
		ls >> log.txt
		echo $(date) >> log.txt
		echo "beklemede"
		sleep 1000
done

exit 0
