FROM camptocamp/rsyslog-bin:v0.1.11

ADD ./confd/rsyslog-kafka.conf.toml /etc/confd/kafka/conf.d/
ADD ./templates/rsyslog-kafka.conf.tmpl /etc/confd/kafka/templates/

ADD ./confd/rsyslog-relp.conf.toml /etc/confd/relp/conf.d/
ADD ./templates/rsyslog-relp.conf.tmpl /etc/confd/relp/templates/

ADD ./confd/rsyslog-relp-kafka.conf.toml /etc/confd/relpkafka/conf.d/
ADD ./templates/rsyslog-relp-kafka.conf.tmpl /etc/confd/relpkafka/templates/

COPY /docker-entrypoint.d/* /docker-entrypoint.d/
