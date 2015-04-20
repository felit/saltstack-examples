upload.mongo.file:
  file.managed:
    - source: salt://mongodb-3.0.2.tgz
    - name: /opt/software/mongodb-3.0.2.tgz
    - user: erp
    - group: erp
    - include_empty: True

mongodb.install:
  cmd.run:
    - name: tar zxvf /opt/software/mongodb-3.0.2.tgz
    - cwd: /opt/programs

add.mongodb.to.path:
  file.append:
    - name: /home/erp/.bashrc
    - text:
      - export PATH=/opt/programs/mongodb-linux-x86_64-3.0.2/bin:$PATH
