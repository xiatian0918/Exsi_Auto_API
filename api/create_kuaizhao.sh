#!/bin/sh


now_time=$(date +%Y-%m-%d)

for i in `cat /tmp/uuid.txt`
do
	/bin/python  /root/pyvmomi-community-samples-master/samples/create_snapshot.py -s 192.168.0.24 -o 443 -u "administrator@vsphere.local" -p "Toprs!@#123" -j "$i" -n "${now_time}"
done

