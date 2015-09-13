install.storm.supervisor.service:
  file.managed:
    - source: salt://service-storm-supervisor.sh
    - name: /etc/init.d/storm-supervisor
    - user: erp
    - group: erp
    - mode: 0744
