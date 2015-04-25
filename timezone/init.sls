# This state configures the timezone.

{%- set timezone = salt['pillar.get']('timezone:name', 'Europe/Berlin') %}
{%- set utc = salt['pillar.get']('timezone:utc', True) %}

timezone_setting:
  timezone.system:
    - name: {{ timezone }}
    - utc: {{ utc }}
