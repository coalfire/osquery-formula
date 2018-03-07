# Ensure the osquery configuration is present.

# This file is intended to be included by init.

{% set config = salt['pillar.get']("osquery:conf") %}
{% set config_hash = salt['pillar.get']("osquery:config_hash") %}

osquery-config:
  file.managed:
    - name: /etc/osquery/osquery.conf
    - user: root
    - group: root
    - source: {{ config }}
    - source_hash: {{ config_hash }}
    - makedirs: True
    - require_in:
      - pkg: osquery-package
