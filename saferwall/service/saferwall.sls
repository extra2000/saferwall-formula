# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

saferwall-running:
  cmd.run:
    - name: podman play kube saferwall-pod.yaml
    - cwd: /opt/saferwall
    - runas: {{ SAFERWALL.hostuser.name }}
