# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}

multiav-running:
  cmd.run:
    - name: podman play kube --seccomp-profile-root /opt/saferwall/src/build/data multiav-pod.yaml
    - cwd: /opt/saferwall
    - runas: {{ host_user }}
