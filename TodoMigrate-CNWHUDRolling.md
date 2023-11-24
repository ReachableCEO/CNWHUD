# CNWHUDTodo

This post is updated at 08:14 on 4/14/2022 . It is the current HUD and sole focus till completed.

## Things accomplished yesterday

* VM7 provisioned, joined to proxmox cluster, running vm work loads
* Got pfv-r1tor-sw02 on net , fixed NTP/syslog on switches that were already on net
* Tweaked ecobee setup for the house, still trying to find optimal temperature
* Started (re)(building|connecting) with previous TSYS affiliated folks in hopes of (re)rounding out R&D team (not that oore IT is settling down nicely)
* Lots of progress on forward/reverse DNS, librenms/netdata
* Added markdown plugin to this wordpress install
* Finished tweaking IOS focus mode automation/schedule
* Made this TODO HUD and executing against it as quickly as possible

## Things to finish by 08:00 04/16/2022

### Techops things:

These are items for which @ReachableCEO is the Directly Responsible Individual and once completed allow him to exit techops critical path (handing over to the wonderful Technical Operations team he has put together)

* VM8 (in progress, monitor goes blank after starting proxmox install, need to swap monitor potentially?)
* pfv-nas-01 (wd) (in progress, completed initial setup, need to finish patching and make available to the pfv-vmsrv farm for use)
* pfv-dc-04 provision 
* get tsys-dc-01[-04] on the air (to facilitate migrating off of them to new domain controllers/forest)

* All systems reporting in to netdata (in progress)
* All systems green in librenms  (in progress)
* System / dashboard inventory (merge into handbook) (in progress)
* IT task list (backlog) in gitea (in progress)
* SRE task list (backlog) in gitea (in progress)

* pfv-nas-02 (netapp) (racked, powered, console access setup, need to factory reset)
* UPS (blocked)
* Get FetchApply setup (port newSrv.sh to it) (in progress)

### CEO force multiplier / foundational things (Tenacity/velocity/focus):

* Setup automations to alert me via pushover to take breaks, drink water, switch locations etc
* Finish paypal/venmo/cash app/buy me a coffee/patreon/librepay/github sponsors profile/banking setup
* Finish video streaming setup (OpenStreamingPlatform for self host (canonical source) and OBS to a proxy out to YT/FB/Twitch)
* Setup wordpress cross posting to discord/discourse/facebook/linked in/twitter 
* IOS Focus modes tweaks (done)
* IOS Fabulous app adjustments (daily routine support system)
* gym bag tweaks / finalization
* consolidating personal / business overhead todo lists
* Get all contacts consolidated and into CRM


## Introduction

THis is a working / live document where I track what i'm working on past/present/future

## CIO 

Techops Todo list: https://git.turnsys.com/TSGTechops/docs-techops/issues?type=all&sort=&state=open&labels=&milestone=0&assignee=3

## CTO

### SUBO

### RackRental


## COO




## Backlog

- Entity stuff For all TSYS components:
  - HFNOC/HFNFC
  - AFABN
  - SDG
  - TheCampusTradingCo
  - RedWFO
  - RedWGR
  - YDN
  - MOrse
  - Suborbital Systems
  - RackRental

### InProgress

- Finish website (landing page at least) build out
- Accounting / finance
- HR
- Discourse
- Discord
- Obtain EIN
- Bank account
- Phone number/IVR
- Tax election
- D&BSN
- sam
- Corp CC
- Corp Frequent Flyer
- Create/finalize stanalone / subsidiary entities:
- Finalize operating agreement

```
series language

Notice of Limitation on Liability of Series

The Company Agreement may establish or provide for the establishment of one or more designated series of members, managers, membership interests, or assets that (1) has separate rights,
powers, or duties with respect to specified property or obligations of the Company or profits and losses associated with specified property or obligations, or (2)
has a separate business purpose or investment objective.

Subject to the provisions of the Texas Business Organizations Code (1) the debts, liabilities, obligations, and expenses incurred, contracted for, or otherwise existing with
respect to a particular series shall be enforceable against the assets of that series only, and shall not be enforceable against the assets of the Company generally
or any other series, and (2) none of the debts, liabilities, obligations, and expenses incurred, contracted for, or otherwise existing with respect to the Company generally –
or any other series – shall be enforceable against the assets of a particular series.

Specific series of assets shall be separately labeled or enumerated in such a manner as to identify each series’ assets, structure, and operations.
Pursuant to §101.614 of the Texas Business Organizations Code, and as ore fully set forth in the Company Agreement,
a specific series and its business and affairs ay be wound up and terminated without causing the winding up of the Company.
The winding up of a series shall not affect the litigation of liability of members and managers of other series or the Company at large.

```

- Contract execution
  - NDA
  - Non compete
  - Invention Assignment
  - anything else needed from <http://siliconhillslawyer.co/startup-formation-issues/>  <http://siliconhillslawyer.co/2013/05/01/austin-startup-form-yourself-avoid-crappy-lawyers/>

- Finish federal government registration for all entities

| Task       | Notes |
| ---------- | ----- |
| SBIR Reg   |       |
| NASA SBIR  |       |
| Grants.gov |       |
| DOD SBIR   |       |
| SAM        |       |
| NSF        |       |
| Grants.gov |       |
| DOD SBIR   |       |
| DHS SBIR   |       |
| DOE        |       |

#### ERPNEXT

| Entity Name    | Entity Created | Documents & Records | Assets | Accounting |
| -------------- | -------------- | -------------------- | ------ | ---------- |
| Subo LLC       |                |                      |        |            |
| RackRental LLC |                |                      |        |            |
| RWSCP Series   |                |                      |        |            |
| RWSCP BDC Inc  |                |                      |        |            |
| AFABN INC      |                |                      |        |            |
| SDG 501c4 INC  |                |                      |        |            |
| SDG PAC INC    |                |                      |        |            |
| HFNOC Series   |                |                      |        |            |
| TSYS LLC       |                |                      |        |            |

#### Bizops General

| Entity Name    | Bank Account | Online Banking   | Stripe  | Paypal  | Fileshare | State Tax Filing | Federal Tax Filing | EIN        | EIN no dash | Other Federal Filings | Sales tax & Use Permit |
| -------------- | ------------ | ---------------- | ------- | ------- | ---------- | ---------------- | ------------------ | ---------- | ----------- | --------------------- | ---------------------- |
| Subo LLC       | Y            | Y                | Y       | Y       | Y          | Y                |                    | 84-2245901 | 842245901   |                       | Y                      |
| RackRental LLC | Y            | Pending Amp call | Blocked | Blocked | Y          | Y                |                    | 84-2251518 | 842251518   |                       | Y                      |
| RWSCP Series   | N/A          | N/A              | N/A     | N/A     | Y          | N/A              | N/A                |            |             |                       | N/A                    |
| RWSCP BDC Inc  | N/A          | N/A              | N/A     | N/A     | Y          |                  |                    |            |             |                       | N/A                    |
| AFABN INC      | N/A          | N/A              | N/A     | N/A     | Y          | Y                |                    | 84-1825176 | 841825176   | N/A                   | N/A                    |
| SDSG 501c4 INC | N/A          | N/A              | N/A     | N/A     | Y          | Y                |                    |            |             | N/A                   | N/A                    |
| SDG PAC INC    | N/A          | N/A              | N/A     | N/A     | Y          | Y                |                    | 84-1855678 | 841855678   |                       | N/A                    |
| HFNOC Series   | N/A          | N/A              | N/A     | N/A     | Y          | N/A              | N/A                |            |             | N/A                   | N/A                    |
| Axios Series   | Y            | Y                | Y       | Y       | Y          | Y                | Y                  |            |             |                       | Y                      |

#### Bizops Marketing

| Brand Name         | Webstats | Facebook Page | Instagram | Twitter | Reddit  | Cross Social Integration | WP tech | WP social integration | Mautic |
| ------------------ | -------- | ------------- | --------- | ------- | ------- | ------------------------ | ------- | --------------------- | ------- |
| Suborbital Systems | Y        | Y             | Y         | Y       | Y       |                          | Y       |                       |         |
| RackRental.net     | Y        | Y             | Y         | Y       | recover |                          | Y       |                       |         |
| RWSCP              | Y        | Y             | Y         | Y       | Y       |                          | Y       |                       |         |
| AFABN              | Y        | Y             | Y         | Y       | Y       |                          | Y       |                       |         |
| SDG                | Y        | Y             | Y         | Y       | Y       |                          | Y       |                       |         |
| HFNOC              | Y        | Y             | Y         | Y       | Y       |                          | Y       |                       |         |

### Follow up on these

- <https://news.ycombinator.com/item?id=10884209>
- <<https://news.ycombinator.com/item?id=10833213>

## Done (as of 04/08/2021)
