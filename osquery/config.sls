# Ensure the osquery configuration is present.

# This file is intended to be included by init.

osquery-config:
  file.managed:
    - name: /etc/osquery/osquery.conf
    - user: root
    - group: root
    - source: {% salt['pillar.get']("osquery:conf") %}
    - require_in:
      - pkg: osquery-package
