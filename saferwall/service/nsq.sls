# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}

nsq-running:
  cmd.run:
    - name: podman play kube nsq-pod.yaml
    - cwd: /opt/saferwall
    - runas: {{ host_user }}
