# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

{% set clamav = SAFERWALL.service.multiav.clamav %}

{% if clamav.enabled %}

multiav-clamav-present:
  cmd.run:
    - name: podman build -t saferwall/clamav:{{ clamav.version }} -f build/docker/Dockerfile.clamav build/data
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}

multiav-clamav-go-present:
  cmd.run:
    - name: podman build -t saferwall/goclamav:{{ clamav.version }} -f build/docker/Dockerfile.goclamav .
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}
    - require:
      - cmd: multiav-clamav-present

{% endif %}
