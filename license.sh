#!/bin/env bash


while :; do
	# EST
	if [[ "$(date '+%Y%m%d%H%M')" == "201811082230" ]]; then
		break
	else
		echo -n .
		sleep 30
	fi
done
echo
date
echo

cat ./est.list | while read line; do
	dev=$(echo "${line}" | cut -d, -f1)
	lic=$(echo "${line}" | cut -d, -f2)
	python2 ./install-license.py ${dev} ${lic}

done

while :; do
	# CST
	if [[ "$(date '+%Y%m%d%H%M')" == "201811082330" ]]; then
		break
	else
		echo -n .
		sleep 30
	fi
done
echo
date
echo

cat ./cst.list | while read line; do
	dev=$(echo "${line}" | cut -d, -f1)
	lic=$(echo "${line}" | cut -d, -f2)
	python2 ./install-license.py ${dev} ${lic}

done


while :; do
	# PST
	if [[ "$(date '+%Y%m%d%H%M')" == "201811090130" ]]; then
		break
	else
		echo -n .
		sleep 30
	fi
done
echo
date
echo

cat ./pst.list | while read line; do
	dev=$(echo "${line}" | cut -d, -f1)
	lic=$(echo "${line}" | cut -d, -f2)
	python2 ./install-license.py ${dev} ${lic}

done


while :; do
	# HST
	if [[ "$(date '+%Y%m%d%H%M')" == "201811090330" ]]; then
		break
	else
		echo -n .
		sleep 30
	fi
done
echo
date
echo

cat ./hst.list | while read line; do
	dev=$(echo "${line}" | cut -d, -f1)
	lic=$(echo "${line}" | cut -d, -f2)
	python2 ./install-license.py ${dev} ${lic}

done
