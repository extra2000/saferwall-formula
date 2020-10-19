# -*- coding: utf-8 -*-
# vim: ft=sls

saferwall-backend-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/backend -f build/docker/Dockerfile.backend .'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}


