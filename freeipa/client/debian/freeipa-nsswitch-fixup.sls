nsswitch-passwd-fixup:
  file.line:
      - content: "passwd:         compat sss"
      - mode: replace
      - match: "passwd:         compat"
      - name: /etc/nsswitch.conf

nsswitch-group-fixup:
  file.line:
      - content: "group:         compat sss"
      - mode: replace
      - match: "group:          compat"
      - name: /etc/nsswitch.conf

nsswitch-shadow-fixup:
  file.line:
      - content: "shadow:         compat sss"
      - mode: replace
      - match: "shadow:         compat"
      - name: /etc/nsswitch.conf

nsswitch-services-fixup:
  file.line:
      - content: "services:       db files sss"
      - mode: replace
      - match: "services:       db files"
      - name: /etc/nsswitch.conf


nsswitch-netgroup-fixup:
  file.line:
      - content: "netgroup:         nis sss"
      - mode: replace
      - match: "netgroup:       nis"
      - name: /etc/nsswitch.conf

nsswitch-sudoers-fixup:
  file.line:
      - content: "sudoers:         files sss"
      - mode: replace
      - match: "sudoers:         files"
      - name: /etc/nsswitch.conf