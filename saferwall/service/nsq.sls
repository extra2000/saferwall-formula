# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

nsq-running:
  cmd.run:
    - name: podman play kube nsq-pod.yaml
    - cwd: /opt/saferwall
    - runas: {{ SAFERWALL.hostuser.name }}
