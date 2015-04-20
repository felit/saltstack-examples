base:
  '*':
    - global
compute:
  '192.168.232.181':
    - match: ipcidr
    - zookeeper
    - storm
    - kafka
  '192.168.232.137':
    - match: ipcidr
    - zookeeper
    - storm
    - kafka
output:
  '192.168.232.32':
    - match: ipcidr
    - mongo
    - elasticsearch
input:
  '192.168.232.210':
    - match: ipcidr
    - postgresql