# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

{% set sophos = SAFERWALL.service.multiav.sophos %}

{% if sophos.enabled %}

multiav-sophos-present:
  cmd.run:
    - name: podman build -t saferwall/sophos:{{ sophos.version }} --build-arg 'SOPHOS_URL={{ sophos.url }}' -f build/docker/Dockerfile.sophos build/data
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}

multiav-sophos-go-present:
  cmd.run:
    - name: podman build -t saferwall/gosophos:{{ sophos.version }} -f build/docker/Dockerfile.gosophos .
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}
    - require:
      - cmd: multiav-sophos-present

{% endif %}
