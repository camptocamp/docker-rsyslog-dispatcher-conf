#!/bin/sh -e

mkdir -p /etc/rsyslog-confd

while true; do
  sleep 1
  confd --backend env --onetime && break
done
