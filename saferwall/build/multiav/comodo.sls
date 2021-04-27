# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

{% set comodo = SAFERWALL.service.multiav.comodo %}

{% if comodo.enabled %}

multiav-comodo-present:
  cmd.run:
    - name: podman build --no-cache -t saferwall/comodo:{{ comodo.version }} -f build/docker/Dockerfile.comodo build/data
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}

multiav-comodo-go-present:
  cmd.run:
    - name: podman build --no-cache -t saferwall/gocomodo:{{ comodo.version }} -f build/docker/Dockerfile.gocomodo .
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}
    - require:
      - cmd: multiav-comodo-present

{% endif %}
