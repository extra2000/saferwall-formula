# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}
{% set saferwall_version = salt['pillar.get']('saferwall:version') -%}
{% set listen_port = salt['pillar.get']('saferwall:service:multiav:sophos:port:container') -%}
{% set url = salt['pillar.get']('saferwall:service:multiav:sophos:url') -%}

{% if salt['pillar.get']('saferwall:service:multiav:sophos:enabled') %}

multiav-sophos-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ host_user }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/sophos:{{ saferwall_version }} --build-arg 'SOPHOS_URL={{ url }}' -f build/docker/Dockerfile.sophos build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}

multiav-sophos-go-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ host_user }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/gosophos:{{ saferwall_version }} -f build/docker/Dockerfile.gosophos .'"
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}
    - require:
      - cmd: multiav-sophos-present

multiav-sophos-running:
  cmd.run:
    - name: podman run -it -d --pod multiav-pod -e "LISTEN_PORT={{ listen_port }}" --name multiav-pod-sophos --volume /opt/saferwall/samples:/samples:rw,z localhost/saferwall/gosophos:{{ saferwall_version }}
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}
    - require:
      - cmd: multiav-sophos-go-present

{% endif %}
