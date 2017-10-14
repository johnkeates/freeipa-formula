freeipa-client-libipa-hbac0-preload:
  pkg.installed:
    - refresh: True
    - install_recommends: False
    - allow_updates: True
    - sources:
      - libipa-hbac0: salt://freeipa/client/debian/files/libipa-hbac0_1.15.2-1_amd64.deb

freeipa-client-python-libipa-hbac-preload:
  pkg.installed:
    - refresh: True
    - install_recommends: False
    - allow_updates: True
    - sources:
      - python-libipa-hbac: salt://freeipa/client/debian/files/python-libipa-hbac_1.15.2-1_amd64.deb


freeipa-client-4_4-preload:
  pkg.installed:
    - refresh: True
    - install_recommends: False
    - allow_updates: True
    - sources:
      #- libipa-hbac0: salt://freeipa/client/debian/files/libipa-hbac0_1.15.2-1_amd64.deb
      #- python-libipa-hbac: salt://freeipa/client/debian/files/python-libipa-hbac_1.15.2-1_amd64.deb
      - freeipa-common: salt://freeipa/client/debian/files/freeipa-common_4.4.4-1_all.deb
      - libsss-idmap0: salt://freeipa/client/debian/files/libsss-idmap0_1.15.2-1_amd64.deb
      - python-ipalib: salt://freeipa/client/debian/files/python-ipalib_4.4.4-1_all.deb
      - python-ipaclient: salt://freeipa/client/debian/files/python-ipaclient_4.4.4-1_all.deb
      - python-sss: salt://freeipa/client/debian/files/python-sss_1.15.2-1_amd64.deb
      - sssd-ad-common: salt://freeipa/client/debian/files/sssd-ad-common_1.15.2-1_amd64.deb
      - sssd-ad: salt://freeipa/client/debian/files/sssd-ad_1.15.2-1_amd64.deb
      - sssd-ipa: salt://freeipa/client/debian/files/sssd-ipa_1.15.2-1_amd64.deb
      - sssd-krb5-common: salt://freeipa/client/debian/files/sssd-krb5-common_1.15.2-1_amd64.deb
      - sssd-krb5: salt://freeipa/client/debian/files/sssd-krb5_1.15.2-1_amd64.deb
      - sssd-proxy: salt://freeipa/client/debian/files/sssd-proxy_1.15.2-1_amd64.deb
      - sssd-common: salt://freeipa/client/debian/files/sssd-common_1.15.2-1_amd64.deb
      - sssd-ldap: salt://freeipa/client/debian/files/sssd-ldap_1.15.2-1_amd64.deb
      - sssd: salt://freeipa/client/debian/files/sssd_1.15.2-1_amd64.deb
      - freeipa-client: salt://freeipa/client/debian/files/freeipa-client_4.4.4-1+b1_amd64.deb
      
freeipa-nfs-homes-deps:
  pkg.installed:
    - pkgs:
      - nfs-common
      - nfs4-acl-tools
      - autofs

freeipa-dependency-installation:
  cmd.run:
    - name: apt-get -yf install
    - onfail:
      - pkg: freeipa-client-4_4-preload