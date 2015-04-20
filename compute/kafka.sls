upload.scala.file:
  file.managed:
    - source: salt://scala-2.11.6.tgz
    - name: /opt/software/scala-2.11.6.tgz

scala.install:
  cmd.run:
    - name: tar -zxvf /opt/software/scala-2.11.6.tgz
    - cwd: /opt/programs

add.scala.to.path:
  file.append:
    - name: /home/erp/.bashrc
    - text:
      - export PATH=/opt/programs/scala-2.11.6/bin:$PATH

upload.kafka.file:
  file.managed:
    - source: salt://kafka_2.11-0.8.2.1.tgz
    - cwd: /opt/programs

kafka.install:
  cmd.run:
    - name: tar -zxvf /opt/software/kafka_2.11-0.8.2.1.tgz
    - cwd: /opt/programs 