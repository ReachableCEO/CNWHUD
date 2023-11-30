- [TSYS Technical Operations Todo](#tsys-technical-operations-todo)
  - [System Architect Tasks and Projects](#system-architect-tasks-and-projects)
      - [Charles daily driver and dev workstation](#charles-daily-driver-and-dev-workstation)
      - [documentation](#documentation)
    - [IT System Admin - Communications](#it-system-admin---communications)
    - [IT System Admin - Configuration Management](#it-system-admin---configuration-management)
      - [Creature comfort setup](#creature-comfort-setup)
    - [IT System Admin - Security/Assurance](#it-system-admin---securityassurance)
      - [SWAG/Authelia](#swagauthelia)
      - [Internal CA](#internal-ca)

# TSYS Technical Operations Todo

## System Architect Tasks and Projects

#### Charles daily driver and dev workstation

- NASA worldwind
- google earth
- flora
- recoll
- scansnap (and on my and shared kiosk system)
- gephi
- metasploit and armitage (maybe other gui as well? msfgui?)

#### documentation

- Adding a VPN user
- new server setup (via assisted configuration management)
- AD authentication (app/user)
- Migrate final bits from IT wiki to TSYS handbook
- Move VsCode onboarding section to main engineering onboarding section in handbook

### IT System Admin - Communications

- deploy an internal phone system and setup DID etc: <http://pnijjar.freeshell.org/2015/fusionpbx-tftp/>
- Migrate lists.thefnf.org to cloudron

### IT System Admin - Configuration Management

- full netdata/librenms coverage
- Local apt mirror
- port newSrv.sh functions to Salt

#### Creature comfort setup

- powerline10k
- fonts
- tmux in zsh

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