# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}
{% set host_group = salt['pillar.get']('saferwall:hostuser:group') -%}

/opt/saferwall/nsq:
  file.directory:
    - user: {{ host_user }}
    - group: {{ host_group }}
    - mode: 777

/opt/saferwall/minio:
  file.directory:
    - user: {{ host_user }}
    - group: {{ host_group }}
    - mode: 777

/opt/saferwall/couchbase:
  file.directory:
    - user: {{ host_user }}
    - group: {{ host_group }}
    - mode: 777

/opt/saferwall/samples:
  file.directory:
    - user: {{ host_user }}
    - group: {{ host_group }}
    - mode: 777
