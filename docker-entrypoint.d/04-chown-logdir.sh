#!/bin/sh -e

mkdir -p "/var/log/$(date +%Y-%m-%d)"
chown -R syslog:syslog /var/log/[0-9]*/ /var/spool/rsyslog/
