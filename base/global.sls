include: 
  - jdk
  - zabbix-agent

subversion:
  pkg:
    - installed

{% for p in ('sysbench','iperf'): %}
{{ p }}:
  pkg:
    - installed

{% endfor %}
/home/erp/logs:
  file.directory:
    - user: erp
    - group: erp
    - mkdirs: True

/usr/local/bin/mbw:
  file.managed:
    - source: salt://mbw
    - mode: 755
