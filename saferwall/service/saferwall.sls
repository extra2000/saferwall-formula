# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}

saferwall-running:
  cmd.run:
    - name: podman play kube saferwall-pod.yaml
    - cwd: /opt/saferwall
    - runas: {{ host_user }}
