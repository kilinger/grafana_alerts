FROM index.xxxxx.com/python:2-onbuild

ENV INTERVAL_SECOND_TO_RUN 10

ADD 00-grafana-alerts.sh /docker-entrypoint-init.d/
RUN chmod +x /docker-entrypoint-init.d/00-grafana-alerts.sh

ADD grafana_alerts.toml /etc/confd/conf.d/
ADD grafana_alerts.cfg.tmpl /etc/confd/templates/
