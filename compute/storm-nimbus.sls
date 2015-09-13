install.storm.nimbus.service:
  file.managed:
    - source: salt://service-storm-nimbus.sh
    - name: /etc/init.d/storm-nimbus
    - user: erp
    - group: erp
    - mode: 0744
