# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

{% set windefender = SAFERWALL.service.multiav.windefender %}

{% if windefender.enabled %}

multiav-windefender-present:
  cmd.run:
    - name: podman build --security-opt seccomp=/opt/saferwall/src/build/data/seccomp.json -t saferwall/windefender:{{ windefender.version }} -f build/docker/Dockerfile.windefender build/data
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}

multiav-windefender-go-present:
  cmd.run:
    - name: podman build --security-opt seccomp=/opt/saferwall/src/build/data/seccomp.json -t saferwall/gowindefender:{{ windefender.version }} -f build/docker/Dockerfile.gowindefender .
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}
    - require:
      - cmd: multiav-windefender-present

{% endif %}
