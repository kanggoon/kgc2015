#!/bin/bash
now=`date +%Y%m%d-%H%M`
mkdir -p /data2/xtrabackup && rm -rf /data2/xtrabackup/$now && innobackupex --user=kgcuser --password=xxxxxx --host=127.0.0.1 --compress --no-timestamp /data2/xtrabackup/$now && chown -R user:user /data2/xtrabackup/$now
