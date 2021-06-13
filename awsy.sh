#!/bin/sh
# inpath - verify that a specified program is either valid as-is,
#   or can be found in the PATH directory list.

#!/bin/bash
while :
	do
		echo "basliyor"
		gsutil -m cp /home/ubuntu/zafer/chia-plotter/tamam/*.plot gs://boran
		echo "Gönderildi"
		sleep 10
		ls >> log.txt
		rm *.plot >> log.txt
		echo $(date) >> log.txt
		echo "beklemede"
		sleep 5200
done

exit 0
