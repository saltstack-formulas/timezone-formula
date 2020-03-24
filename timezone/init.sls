# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import timezone with context %}

{%- if grains.os not in ('MacOS', 'Windows') %}
timezone_packages:
  {#- Work around bug in Salt for certain platforms where symlink isn't available #}
  {%- if not salt['file.file_exists'](timezone.path_localtime) %}
  file.symlink:
    - name: {{ timezone.path_localtime }}
    - target: {{ timezone.path_zoneinfo }}{{ timezone.tz_UTC }}
    - force: true
    - require_in:
      # Required for unattended installation of the timezone package
      - pkg: timezone_packages
      # Required for timezone comparison (symlink must be present for checking the current timezone)
      - timezone: timezone_setting
  {%- endif %}
  pkg.installed:
    - name: {{ timezone.pkg.name }}
    - require_in:
      # Required for timezone comparison (current and proposed)
      - timezone: timezone_setting

dbus_for_timezone:
  pkg.installed:
    - name: {{ timezone.dbus.pkg }}
    - require_in:
      - timezone: timezone_setting
  {%- if timezone.dbus.run_service %}
  service.running:
    - name: {{ timezone.dbus.service }}
    - enable: true
    - require:
      - pkg: dbus_for_timezone
    - require_in:
      # `dbus` is required for running `timedatectl`
      - timezone: timezone_setting
  {%- endif %}
{%- endif %}

timezone_setting:
  timezone.system:
    - name: {{ timezone.name }}
    - utc: {{ timezone.utc }}
