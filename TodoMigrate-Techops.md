# TSYS Technical Operations Todo

- Get FetchApply setup (port newSrv.sh to it) (in progress)
- NASA worldwind
- google earth
- flora
- recoll
- scansnap (and on my and shared kiosk system)
- gephi
- metasploit and armitage (maybe other gui as well? msfgui?)
- TechOPS-Documentation: Adding a VPN user
- TechOPS-Documentation:new server setup (via assisted configuration management)
- TechOPS-Documentation: AD authentication (app/user)
- TechOPS-Documentation: Migrate final bits from IT wiki to TSYS handbook
- TechOPS-Documentation: Move VsCode onboarding section to main engineering onboarding section in handbook

### IT System Admin - Communications

- deploy an internal phone system and setup DID etc: <http://pnijjar.freeshell.org/2015/fusionpbx-tftp/>
- Migrate lists.thefnf.org to cloudron

### IT System Admin - Configuration Management

- full netdata coverage
- full librenms coverage
- Local apt mirror

### IT System Admin - Security/Assurance

This covers areas such as

- SIEM
- access control (ldap) / zero trust / authentication / SSO  
- IDS,IPS
- auditing/reporting/vulnerability scanning

* Setup IDS
* Setup IPS
* Setup outbound web Proxy
* Setup ICAP clamav scanning on outbound web proxy

#### SWAG/Authelia

- <https://github.com/linuxserver/docker-swag>
- <https://github.com/authelia/authelia>
- <https://www.linuxserver.io/blog/2020-08-26-setting-up-authelia>

#### Internal CA

- Internal CA (use XCA on an airgap workstation and XCA on CA VM with the HSM intermediate device passed through)

#### Creature comfort setup

- fonts
