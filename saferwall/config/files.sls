# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}
{% set host_group = salt['pillar.get']('saferwall:hostuser:group') -%}

/opt/saferwall:
  file.directory:
    - user: {{ host_user }}
    - group: {{ host_group }}

/opt/saferwall/src:
  file.recurse:
    - source: salt://saferwall/files/saferwall
    - user: {{ host_user }}
    - group: {{ host_group }}

/opt/saferwall/samples:
  file.directory:
    - user: {{ host_user }}
    - group: {{ host_group }}

/opt/saferwall/backend-conf.toml:
  file.managed:
    - source: salt://saferwall/files/backend-conf.toml.jinja
    - user: {{ host_user }}
    - group: {{ host_group }}
    - template: jinja

/opt/saferwall/consumer-conf.toml:
  file.managed:
    - source: salt://saferwall/files/consumer-conf.toml.jinja
    - user: {{ host_user }}
    - group: {{ host_group }}
    - template: jinja

/opt/saferwall/nsq-pod.yaml:
  file.managed:
    - source: salt://saferwall/files/nsq-pod.yaml.jinja
    - user: {{ host_user }}
    - group: {{ host_group }}
    - template: jinja

/opt/saferwall/minio-pod.yaml:
  file.managed:
    - source: salt://saferwall/files/minio-pod.yaml.jinja
    - user: {{ host_user }}
    - group: {{ host_group }}
    - template: jinja

/opt/saferwall/couchbase-pod.yaml:
  file.managed:
    - source: salt://saferwall/files/couchbase-pod.yaml.jinja
    - user: {{ host_user }}
    - group: {{ host_group }}
    - template: jinja

/opt/saferwall/saferwall-pod.yaml:
  file.managed:
    - source: salt://saferwall/files/saferwall-pod.yaml.jinja
    - user: {{ host_user }}
    - group: {{ host_group }}
    - template: jinja
