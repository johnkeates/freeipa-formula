# freeipa.client




--domain=DOMAIN # Set the domain name to DOMAIN
--server=SERVER #Set the IPA server to connect to. May be specified multiple times to add multiple servers to ipa_server value in sssd.conf. Only the first value is considered when used with --no-sssd.
--realm=REALM_NAME #Set the IPA realm name to REALM_NAME
--fixed-primary #Configure sssd to use a fixed server as the primary IPA server. The default is to use DNS SRV records to determine the primary server to use and fall back to the server the client is enrolled with. When used in conjunction with --server then no _srv_ value is set in the ipa_server option in sssd.conf.
-p, --principal #Authorized kerberos principal to use to join the IPA realm.
-w PASSWORD, --password=PASSWORD # Password for joining a machine to the IPA realm. Assumes bulk password unless principal is also set.
-W #Prompt for the password for joining a machine to the IPA realm.
--mkhomedir #Configure PAM to create a users home directory if it does not exist.
--hostname #The hostname of this machine (FQDN). If specified, the hostname will be set and the system configuration will be updated to persist over reboot. By default a nodename result from uname(2) is used.
--ntp-server=NTP_SERVER #Configure ntpd to use this NTP server.
-N, --no-ntp #Do not configure or enable NTP.
--ssh-trust-dns #Configure OpenSSH client to trust DNS SSHFP records.
--no-ssh #Do not configure OpenSSH client.
--no-sshd #Do not configure OpenSSH server.
--no-dns-sshfp #Do not automatically create DNS SSHFP records.
--noac #Do not use Authconfig to modify the nsswitch.conf and PAM configuration.
-f, --force #Force the settings even if errors occur
-d, --debug #Print debugging information to stdout
-U, --unattended #Unattended installation. The user will not be prompted.
--ca-cert-file=CA_FILE #Do not attempt to acquire the IPA CA certificate via automated means, instead use the CA certificate found locally in in CA_FILE. The CA_FILE must be an absolute path to a PEM formatted certificate file. The CA certificate found in CA_FILE is considered authoritative and will be installed without checking to see if it's valid for the IPA domain.

Sssd Options

--permit #Configure SSSD to permit all access. Otherwise the machine will be controlled by the Host-based Access Controls (HBAC) on the IPA server.
--enable-dns-updates #This option tells SSSD to automatically update DNS with the IP address of this client.
--no-krb5-offline-passwords #Configure SSSD not to store user password when the server is offline.
-S, --no-sssd #Do not configure the client to use SSSD for authentication, use nss_ldap instead.
--preserve-sssd #Disabled by default. When enabled, preserves old SSSD configuration if it is not possible to merge it with a new one. Effectively, if the merge is not possible due to SSSDConfig reader encountering unsupported options, ipa-client-install will not run further and ask to fix SSSD config first. When this option is not specified, ipa-client-install will back up SSSD config and create new one. The back up version will be restored during uninstall.

Uninstall Options

--uninstall #Remove the IPA client software and restore the configuration to the pre-IPA state.
-U, --unattended #Unattended uninstallation. The user will not be prompted.
