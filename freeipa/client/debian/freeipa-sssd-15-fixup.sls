freeipa-sssd-15-fixup:
  file.line:
      - content: "services = nss, sudo, pam, ssh"
      - mode: replace
      - match: "services = "
      - name: /etc/sssd/sssd.conf