#!/bin/sh -e

mkdir -p /etc/rsyslog-confd

while true; do
  sleep 1
  if [ -z "$KAFKA_TOPIC" ]; then
    echo "relp-based config, with settings: TARGET: '$TARGET', TOKEN: '$TOKEN'"
    confd -backend env -confdir /etc/confd/relp/ -onetime && break
  elif [ -z "$TARGET" ]; then
    echo "kafka-based config, with settings: KAFKA_TOPIC: '$KAFKA_TOPIC', KAFKA_BROKERS: '$KAFKA_BROKERS', KAFKA_PARAMS: '$KAFKA_PARAMS'"
    confd -backend env -confdir /etc/confd/kafka/ -onetime && break
  else
    echo "relp-kafka-based config, with settings: TARGET: '$TARGET', TOKEN: '$TOKEN', KAFKA_TOPIC: '$KAFKA_TOPIC', KAFKA_BROKERS: '$KAFKA_BROKERS', KAFKA_PARAMS: '$KAFKA_PARAMS'"
    confd -backend env -confdir /etc/confd/relpkafka/ -onetime && break
  fi
done
