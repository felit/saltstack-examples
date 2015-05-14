php:
  pkg:
    - installed
zabbix22-agent:
  pkg:
    - installed
#  service:
#    - name: zabbix-agent
#    - reload: True
/etc/zabbix/zabbix_agent.conf:
  file.managed:
    - source: salt://zabbix_agent.conf
    - template: jinja
    - user: root

/etc/zabbix_agentd.conf:
  file.managed:
    - source: salt://zabbix_agent.conf
    - template: jinja
    - user: root
