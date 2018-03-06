# Ensure the osquery configuration is present.

# This file is intended to be included by init.

{% set config = salt['pillar.get']("osquery:conf") %}

osquery-config:
  file.managed:
    - name: /etc/osquery/osquery.conf
    - user: root
    - group: root
    - source: {{ config }}
    - require_in:
      - pkg: osquery-package
