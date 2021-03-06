# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

/etc/nginx/conf.d/https.conf:
  file.managed:
    - source: salt://saferwall/files/nginx-https.conf.jinja
    - template: jinja
    - context:
      nginx: {{ SAFERWALL.nginx }}

saferwall-nginx-service-stop:
  service.dead:
    - name: nginx.service

saferwall-nginx-service-running:
  service.running:
    - name: nginx.service
