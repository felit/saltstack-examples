zookeeper.server:
  file.managed:
    - source: salt://zookeeper-3.4.6.tar.gz
    - name: /opt/software/zookeeper-3.4.6.tar.gz

zookeeper.install:
  cmd.run:
    - name: tar -zxvf /opt/software/zookeeper-3.4.6.tar.gz
    - cwd: /opt/programs

/home/erp/zookeeper-data:
  file.directory:
    - user: erp
    - group: erp
    - mkdirs: True

/opt/programs/zookeeper-3.4.6:
  file.directory:
    - user: erp
    - group: erp
    - recurse:
      - user
      - group

/opt/programs/zookeeper-3.4.6/conf/zoo.cfg:
  file.managed:
    - user: erp
    - group: erp
    - source: salt://zoo.cfg

/opt/programs/zookeeper-3.4.6/bin/zkServer.sh:
  file.managed:
    - user: erp
    - group: erp
    - source: salt://zkServer.sh

create.zookeeper.service:
  file.symlink:
    - name: /etc/init.d/zookeeper
    - target: /opt/programs/zookeeper-3.4.6/bin/zkServer.sh
  service.running:
    - name: zookeeper
    - enable: False
