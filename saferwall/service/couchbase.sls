# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}

couchbase-running:
  cmd.run:
    - name: podman play kube couchbase-pod.yaml
    - cwd: /opt/saferwall
    - runas: {{ host_user }}
