# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

{% set backend = SAFERWALL.service.backend %}

saferwall-backend-present:
  cmd.run:
    - name: podman build -t saferwall/backend:{{ backend.version }} -f build/docker/Dockerfile.backend .
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}
