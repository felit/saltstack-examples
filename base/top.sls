base:
  '*':
    - global
compute:
  '192.168.232.181':
    - match: ipcidr
    - zookeeper
    - storm
    - storm_ui
    - storm_nimbus
    - storm_supervisor
    - kafka
  '192.168.232.137':
    - match: ipcidr
    - zookeeper
    - storm
    - storm_supervisor
    - kafka
    - zabbix_server
  '192.168.232.210':
    - match: ipcidr
    - zookeeper
    - kafka
    - storm
    - storm_supervisor
output:
  '192.168.232.32':
    - match: ipcidr
    - mongo
    - elasticsearch
input:
  '192.168.232.210':
    - match: ipcidr
    - postgresql
