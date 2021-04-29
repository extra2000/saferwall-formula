# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import SAFERWALL with context %}

/opt/nginx/https.conf:
  file.managed:
    - source: salt://saferwall/files/nginx-https.conf.jinja
    - template: jinja
    - context:
      nginx: {{ SAFERWALL.nginx }}
