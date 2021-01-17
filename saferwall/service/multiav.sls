# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

multiav-running:
  cmd.run:
    - name: podman play kube --network=saferwall --seccomp-profile-root /opt/saferwall/src/build/data multiav-pod.yaml
    - cwd: /opt/saferwall
    - runas: {{ SAFERWALL.hostuser.name }}
