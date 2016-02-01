# freeipa.client

# This allows us to install stuff if it's not on the current release
apt-preferences-sid-lowpin:
  file.managed:
    - name: /etc/apt/preferences.d/99salt
    - user: root
    - group: root
    - mode: 644
    - contents: |
        Package: *
        Pin: release a=stable
        Pin-Priority: 700

        Package: *
        Pin: release a=testing
        Pin-Priority: 650

        Package: *
        Pin: release a=unstable
        Pin-Priority: 600

# Here are the repos we don't normally run off of, but in special cases we steal stuff from
apt-repo-sid-testing:
  file.managed:
    - name: /etc/apt/sources.list.d/99sid.list
    - user: root
    - group: root
    - mode: 644
    - contents: |
        deb http://mirror.nl.leaseweb.net/debian testing main non-free contrib
        deb http://mirror.nl.leaseweb.net/debian unstable main non-free contrib
    - require:
      - file: apt-preferences-sid-lowpin

# Install FreeIPA Client installer, so it can be attached afterwards
freeipa-client-preinstall:
  pkg.installed:
    - name: freeipa-client
    - fromrepo: sid
    - require:
      - file: apt-repo-sid-testing
