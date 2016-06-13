FROM camptocamp/confd:v0.12.0-alpha3

ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates

ENTRYPOINT ["/confd/confd"]
CMD ["--backend", "env", "--onetime", "-log-level", "debug"]
