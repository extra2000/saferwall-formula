# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}

saferwall-ui-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ host_user }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/ui -f build/docker/Dockerfile.frontend ui/'"
    - cwd: /opt/saferwall/src
    - runas: {{ host_user }}
