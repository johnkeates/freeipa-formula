{% from "freeipa/map.jinja" import freeipa with context %}
# Automated enrollment is currently limited to principal+password auth
freeipa-client-enroll:
  cmd.run:
   - name: "ipa-client-install -U --enable-dns-updates --principal={{freeipa.client.enroll.username}} --password={{freeipa.client.enroll.password}}"
   - unless: id {{freeipa.client.enroll.username}}