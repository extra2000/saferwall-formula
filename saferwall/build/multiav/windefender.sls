# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}
{% set version = salt['pillar.get']('saferwall:service:multiav:windefender:version') -%}

{% if salt['pillar.get']('saferwall:service:multiav:windefender:enabled') %}

multiav-windefender-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ host_user }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/windefender:{{ version }} -f build/docker/Dockerfile.windefender build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}

multiav-windefender-go-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ host_user }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/gowindefender:{{ version }} -f build/docker/Dockerfile.gowindefender .'"
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}
    - require:
      - cmd: multiav-windefender-present

{% endif %}
