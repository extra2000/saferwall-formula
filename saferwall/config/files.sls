# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

/opt/saferwall:
  file.directory:
    - user: {{ SAFERWALL.hostuser.name }}
    - group: {{ SAFERWALL.hostuser.group }}

/opt/saferwall/src:
  file.recurse:
    - source: salt://saferwall/files/saferwall
    - user: {{ SAFERWALL.hostuser.name }}
    - group: {{ SAFERWALL.hostuser.group }}
    - show_changes: false

/opt/saferwall/backend-conf.toml:
  file.managed:
    - source: salt://saferwall/files/backend-conf.toml.jinja
    - user: {{ SAFERWALL.hostuser.name }}
    - group: {{ SAFERWALL.hostuser.group }}
    - template: jinja
    - context:
      backend: {{ SAFERWALL.service.backend }}
      ui: {{ SAFERWALL.service.ui }}
      nsq: {{ SAFERWALL.service.nsq }}
      minio: {{ SAFERWALL.service.minio }}
      couchbase: {{ SAFERWALL.service.couchbase }}

/opt/saferwall/consumer-conf.toml:
  file.managed:
    - source: salt://saferwall/files/consumer-conf.toml.jinja
    - user: {{ SAFERWALL.hostuser.name }}
    - group: {{ SAFERWALL.hostuser.group }}
    - template: jinja
    - context:
      backend: {{ SAFERWALL.service.backend }}
      nsq: {{ SAFERWALL.service.nsq }}
      minio: {{ SAFERWALL.service.minio }}
      multiav: {{ SAFERWALL.service.multiav }}

/opt/saferwall/clamd.conf:
  file.managed:
    - source: salt://saferwall/files/clamd.conf.jinja
    - user: {{ SAFERWALL.hostuser.name }}
    - group: {{ SAFERWALL.hostuser.group }}
    - template: jinja
    - context:
      backend: {{ SAFERWALL.service.backend }}

/opt/saferwall/nsq-pod.yaml:
  file.managed:
    - source: salt://saferwall/files/nsq-pod.yaml.jinja
    - user: {{ SAFERWALL.hostuser.name }}
    - group: {{ SAFERWALL.hostuser.group }}
    - template: jinja
    - context:
      nsq: {{ SAFERWALL.service.nsq }}

/opt/saferwall/minio-pod.yaml:
  file.managed:
    - source: salt://saferwall/files/minio-pod.yaml.jinja
    - user: {{ SAFERWALL.hostuser.name }}
    - group: {{ SAFERWALL.hostuser.group }}
    - template: jinja
    - context:
      minio: {{ SAFERWALL.service.minio }}

/opt/saferwall/couchbase-pod.yaml:
  file.managed:
    - source: salt://saferwall/files/couchbase-pod.yaml.jinja
    - user: {{ SAFERWALL.hostuser.name }}
    - group: {{ SAFERWALL.hostuser.group }}
    - template: jinja
    - context:
      couchbase: {{ SAFERWALL.service.couchbase }}

/opt/saferwall/multiav-pod.yaml:
  file.managed:
    - source: salt://saferwall/files/multiav-pod.yaml.jinja
    - user: {{ SAFERWALL.hostuser.name }}
    - group: {{ SAFERWALL.hostuser.group }}
    - template: jinja
    - context:
      multiav: {{ SAFERWALL.service.multiav }}

/opt/saferwall/saferwall-pod.yaml:
  file.managed:
    - source: salt://saferwall/files/saferwall-pod.yaml.jinja
    - user: {{ SAFERWALL.hostuser.name }}
    - group: {{ SAFERWALL.hostuser.group }}
    - template: jinja
    - context:
      ui: {{ SAFERWALL.service.ui }}
      backend: {{ SAFERWALL.service.backend }}
      consumer: {{ SAFERWALL.service.consumer }}

dos2unix:
  pkg.installed

ensure-bash-scripts-are-LF:
  cmd.run:
    - name: find ./ -type f -print0 | xargs -0 dos2unix
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}
    - hide_output: true
