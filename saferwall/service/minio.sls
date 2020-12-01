# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}

minio-running:
  cmd.run:
    - name: podman play kube minio-pod.yaml
    - cwd: /opt/saferwall
    - runas: {{ host_user }}
