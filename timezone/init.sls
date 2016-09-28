# This state configures the timezone.

{%- set timezone = salt['pillar.get']('timezone:name', 'Europe/Berlin') %}
{%- set utc = salt['pillar.get']('timezone:utc', True) %}
{% from "timezone/map.jinja" import confmap with context %}

timezone_setting:
  timezone.system:
    - name: {{ timezone }}
    - utc: {{ utc }}

timezone.packages:
  pkg.installed:
    - name: {{ confmap.pkgname }}

timezone.symlink:
  file.symlink:
    - name: {{ confmap.path-localtime }}
    - target: {{ confmap.path-zoneinfo }}{{ timezone }}
    - force: true
    - require:
      - pkg: {{ confmap.pkgname }}
