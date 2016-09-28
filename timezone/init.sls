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

{{ confmap.path-localtime }}:
  file.symlink:
    - target: {{ path-zoneinfo }}{{ timezone }}
    - require:
      - pkg: {{ confmap.pkgname }}
