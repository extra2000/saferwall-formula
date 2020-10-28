# -*- coding: utf-8 -*-
# vim: ft=sls

{% set host_user = salt['pillar.get']('saferwall:hostuser:name') -%}
{% set clamav_port = salt['pillar.get']('saferwall:service:multiav:clamav:port:host')|string + ":" + salt['pillar.get']('saferwall:service:multiav:clamav:port:container')|string %}
{% set comodo_port = salt['pillar.get']('saferwall:service:multiav:comodo:port:host')|string + ":" + salt['pillar.get']('saferwall:service:multiav:comodo:port:container')|string %}
{% set sophos_port = salt['pillar.get']('saferwall:service:multiav:sophos:port:host')|string + ":" + salt['pillar.get']('saferwall:service:multiav:sophos:port:container')|string %}
{% set windefender_port = salt['pillar.get']('saferwall:service:multiav:windefender:port:host')|string + ":" + salt['pillar.get']('saferwall:service:multiav:windefender:port:container')|string %}

multiav-pod-present:
  cmd.run:
    - name: podman pod create -n multiav-pod -p {{ clamav_port }} -p {{ comodo_port }} -p {{ sophos_port }} -p {{ windefender_port }}
    - cwd: /opt/saferwall
    - runas: {{ host_user }}
