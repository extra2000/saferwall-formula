# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}
{% set saferwall_version = salt['pillar.get']('saferwall:version') -%}
{% set listen_port = salt['pillar.get']('saferwall:service:multiav:comodo:port:container') -%}

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

multiav-comodo-running:
  cmd.run:
    - name: podman run -it -d --pod multiav-pod -e "LISTEN_PORT={{ listen_port }}" --name multiav-pod-comodo --volume /opt/saferwall/samples:/samples:rw,z localhost/saferwall/gocomodo:{{ saferwall_version }}
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}
    - require:
      - cmd: multiav-comodo-go-present

{% endif %}
