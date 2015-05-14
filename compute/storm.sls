storm.server:
  file.managed:
    - source: salt://apache-storm-0.9.3.tar.gz
    - name: /opt/software/apache-storm-0.9.3.tar.gz
    - user: erp
    - group: erp
storm.install:
  cmd.run:
    - name: tar -zxvf /opt/software/apache-storm-0.9.3.tar.gz
    - cwd: /opt/programs

storm.conf.file:
  file.managed:
    - source: salt://storm.yaml
    - name: /opt/programs/apache-storm-0.9.3/conf/storm.yaml
    - user: erp
    - group: erp
