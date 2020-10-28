# -*- coding: utf-8 -*-
# vim: ft=sls

# These non-free antivirus are not yet tested!
# Below is the equired pillar
# saferwall:
#   multiav:
#     avast:
#       enabled: false
#     avira:
#       enabled: false
#     bitdefender:
#       enabled: false
#       licensekey: insert-your-bitdefender-license-key-here
#     drweb:
#       enabled: false
#       licensekey: insert-your-drweb-license-key-here
#     eset:
#       enabled: false
#       username: insert-your-eset-username-here
#       password: insert-your-eset-password-here
#     fsecure:
#       enabled: false
#     kaspersky:
#       enabled: false
#     mcafee:
#       enabled: false
#       url: https://www.dropbox.com/s/d9cx2wddeiqff59/sav-linux-free
#     symantec:
#       enabled: false
#       url: insert-your-symantec-url-here
#     trendmicro:
#       enabled: false
#       licensekey: insert-your-trendmicro-key-here

{% if salt['pillar.get']('saferwall:multiav:avast:enabled') %}
multiav-avast-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/avast:{{ pillar['saferwall']['version'] }} -f build/docker/Dockerfile.avast build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}
{% endif %}

{% if salt['pillar.get']('saferwall:multiav:avira:enabled') %}
multiav-avast-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/avira:{{ pillar['saferwall']['version'] }} -f build/docker/Dockerfile.avira build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}
{% endif %}

{% if salt['pillar.get']('saferwall:multiav:bitdefender:enabled') %}
multiav-bitdefender-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/bitdefender:{{ pillar['saferwall']['version'] }} --build-arg 'BITDEFENDER_LICENSE_KEY={{ pillar['saferwall']['multiav']['bitdefender']['licensekey'] }}' -f build/docker/Dockerfile.bitdefender build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}
{% endif %}

{% if salt['pillar.get']('saferwall:multiav:drweb:enabled') %}
multiav-drweb-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/drweb:{{ pillar['saferwall']['version'] }} --build-arg 'DR_WEB_LICENSE_KEY={{ pillar['saferwall']['multiav']['drweb']['licensekey'] }}' -f build/docker/Dockerfile.drweb build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}
{% endif %}

{% if salt['pillar.get']('saferwall:multiav:eset:enabled') %}
multiav-eset-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/eset:{{ pillar['saferwall']['version'] }} --build-arg 'ESET_USER={{ pillar['saferwall']['multiav']['eset']['username'] }}' --build-arg 'ESET_PWD={{ pillar['saferwall']['multiav']['eset']['password'] }}' -f build/docker/Dockerfile.eset build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}
{% endif %}

{% if salt['pillar.get']('saferwall:multiav:fsecure:enabled') %}
multiav-fsecure-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/fsecure:{{ pillar['saferwall']['version'] }} -f build/docker/Dockerfile.fsecure build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}
{% endif %}

{% if salt['pillar.get']('saferwall:multiav:kaspersky:enabled') %}
multiav-kaspersky-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/kaspersky:{{ pillar['saferwall']['version'] }} -f build/docker/Dockerfile.kaspersky build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}
{% endif %}

{% if salt['pillar.get']('saferwall:multiav:mcafee:enabled') %}
multiav-mcafee-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/mcafee:{{ pillar['saferwall']['version'] }} -f build/docker/Dockerfile.mcafee build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}
{% endif %}

{% if salt['pillar.get']('saferwall:multiav:symantec:enabled') %}
multiav-symantec-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/symantec:{{ pillar['saferwall']['version'] }} --build-arg 'SYMANTEC_URL={{ pillar['saferwall']['multiav']['symantec']['url'] }}' -f build/docker/Dockerfile.symantec build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}
{% endif %}

{% if salt['pillar.get']('saferwall:multiav:trendmicro:enabled') %}
multiav-trendmicro-present:
  cmd.run:
    - name: sudo sh -c "ulimit -n 524288 && exec su {{ pillar['saferwall']['user']['name'] }} -c 'podman build --ulimit nofile=1024:524288 -t saferwall/trendmicro:{{ pillar['saferwall']['version'] }} --build-arg 'TREND_MICRO_LICENSE_KEY={{ pillar['saferwall']['multiav']['trendmicro']['licensekey'] }}' -f build/docker/Dockerfile.trendmicro build/data'"
    - cwd: /opt/saferwall/src
    - runas: {{ pillar['saferwall']['user']['name'] }}
{% endif %}
