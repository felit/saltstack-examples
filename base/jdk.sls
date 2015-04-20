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
    - source: salt://jdk-6u33-linux-x64.bin
    - name: /opt/software/jdk-6u33-linux-x64.bin
    - include_empty: True
    - user: erp
    - group: erp

/home/erp/.bashrc:
  file.append:
    - text:
       - export JAVA_HOME=/opt/programs/jdk1.6.0_33
       - export PATH=$JAVA_HOME/bin:$PATH

~/.bashrc:
  file.append:
    - text:
       - export JAVA_HOME=/opt/programs/jdk1.6.0_33
       - export PATH=$JAVA_HOME/bin:$PATH

jdk-install:
  cmd.run:
    - name: bash /opt/software/jdk-6u33-linux-x64.bin
    - cwd: /opt/programs
