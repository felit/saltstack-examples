/opt/software:
  file.directory:
    - user: erp
    - group: erp
    - mode: 755
    - mkdirs: True
/opt/programs:
  file.directory:
    - user: erp
    - group: erp
    - mode: 755
    - mkdirs: True

jdk-file:
  file.managed:
    - source: salt://jdk-7u67-linux-x64.tar.gz
    - name: /opt/software/jdk-7u67-linux-x64.tar.gz
    - include_empty: True
    - user: erp
    - group: erp

/home/erp/.bashrc:
  file.append:
    - text:
       - export JAVA_HOME=/opt/programs/jdk1.7.0_67
       - export PATH=$JAVA_HOME/bin:$PATH

~/.bashrc:
  file.append:
    - text:
       - export JAVA_HOME=/opt/programs/jdk1.7.0_67
       - export PATH=$JAVA_HOME/bin:$PATH

jdk-install:
  cmd.run:
    - name: tar -zxvf /opt/software/jdk-7u67-linux-x64.tar.gz
    - cwd: /opt/programs
