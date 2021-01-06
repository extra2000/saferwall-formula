# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

{% set consumer = SAFERWALL.service.consumer %}

saferwall-consumer-present:
  cmd.run:
    - name: podman build -t saferwall/consumer:{{ consumer.version }} -f build/docker/Dockerfile.consumer .
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}
