mongodb data directory:
  file.directory:
    - name: /home/erp/data/mongo-cluster-data
    - user: erp
    - group: erp

upload mongodb:
  file.managed:
    - name: /opt/software/mongodb-3.0.2.tgz
    - source: salt://mongodb-3.0.2.tgz
    - user: erp
    - group: erp

install mongodb:
  cmd.run:
    - name: tar -zxvf /opt/software/mongodb-3.0.2.tgz
    - cwd: /opt/programs
    - user: erp
    - group: erp

add.mongodb.to.path:
  file.append:
    - name: /home/erp/.bashrc
    - text:
      - export PATH=/opt/programs/mongodb-linux-x86_64-3.0.2/bin:$PATH

# install mongo service:
