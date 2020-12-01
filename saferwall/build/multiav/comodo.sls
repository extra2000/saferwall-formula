# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}
{% set saferwall_version = salt['pillar.get']('saferwall:version') -%}

{% if salt['pillar.get']('saferwall:service:multiav:comodo:enabled') %}

multiav-comodo-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ host_user }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/comodo:{{ saferwall_version }} -f build/docker/Dockerfile.comodo build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}

multiav-comodo-go-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ host_user }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/gocomodo:{{ saferwall_version }} -f build/docker/Dockerfile.gocomodo .'"
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}
    - require:
      - cmd: multiav-comodo-present

{% endif %}
