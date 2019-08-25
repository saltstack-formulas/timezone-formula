# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import timezone with context %}

timezone_setting:
  timezone.system:
    - name: {{ timezone.name }}
    - utc: {{ timezone.utc }}

{%- if grains.os not in ('MacOS', 'Windows') %}

timezone_packages:
  pkg.installed:
    - name: {{ timezone.pkgname }}

timezone_symlink:
  file.symlink:
    - name: {{ timezone.path_localtime }}
    - target: {{ timezone.path_zoneinfo }}{{ timezone.name }}
    - force: true
    - require:
      - pkg: {{ timezone.pkgname }}

{%- endif %}
