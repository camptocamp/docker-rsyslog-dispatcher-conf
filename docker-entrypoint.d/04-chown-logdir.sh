#!/bin/sh -e

chown -R syslog:syslog /var/log/[0-9]*/ /var/spool/rsyslog/
