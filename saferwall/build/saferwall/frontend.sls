# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

{% set ui = SAFERWALL.service.backend %}

saferwall-ui-present:
  cmd.run:
    - name: podman build -t saferwall/ui:{{ ui.version }} -f build/docker/Dockerfile.frontend ui/
    - cwd: /opt/saferwall/src
    - runas: {{ SAFERWALL.hostuser.name }}
