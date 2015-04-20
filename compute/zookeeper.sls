zookeeper.server:
  file.managed:
    - source: salt://zookeeper-3.4.6.tar.gz
    - name: /opt/software/zookeeper-3.4.6.tar.gz

zookeeper.install:
  cmd.run:
    - name: tar -zxvf /opt/software/zookeeper-3.4.6.tar.gz
    - cwd: /opt/programs
