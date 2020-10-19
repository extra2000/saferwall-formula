# -*- coding: utf-8 -*-
# vim: ft=sls

/opt/saferwall:
  file.directory:
    - user: {{ pillar['saferwall']['user']['name'] }}
    - group: {{ pillar['saferwall']['user']['group'] }}

/opt/saferwall/src:
  file.recurse:
    - source: salt://saferwall/files/saferwall
    - user: {{ pillar['saferwall']['user']['name'] }}
    - group: {{ pillar['saferwall']['user']['group'] }}
