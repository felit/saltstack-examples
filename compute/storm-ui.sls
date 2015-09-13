install.storm.ui.service:
  file.managed:
    - source: salt://service-storm-ui.sh
    - name: /etc/init.d/storm-ui
    - user: erp
    - group: erp
    - mode: 0744
