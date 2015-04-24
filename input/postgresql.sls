/home/erp/vars.txt:
  file.managed:
    - source: salt://test.template
    - name: /home/erp/vars.txt
    - template: jinja
    - user: erp
    - group: erp
