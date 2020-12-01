# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}
{% set saferwall_version = salt['pillar.get']('saferwall:version') -%}

{% if salt['pillar.get']('saferwall:service:multiav:clamav:enabled') %}

multiav-clamav-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ host_user }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/clamav:{{ saferwall_version }} -f build/docker/Dockerfile.clamav build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}

multiav-clamav-go-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ host_user }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/goclamav:{{ saferwall_version }} -f build/docker/Dockerfile.goclamav .'"
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}
    - require:
      - cmd: multiav-clamav-present

{% endif %}
