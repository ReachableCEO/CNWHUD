- [TSYS December Todo List](#tsys-december-todo-list)
  - [Outreach/personal force multiplier](#outreachpersonal-force-multiplier)
  - [CIO](#cio)
    - [Technical Operations](#technical-operations)
    - [RF Chamber](#rf-chamber)
      - [Overview](#overview)
      - [Hardware](#hardware)
      - [Process](#process)
      - [Enclosure](#enclosure)
      - [Software](#software)
        - [SDR server](#sdr-server)
    - [EE](#ee)
    - [CNC/3d](#cnc3d)
      - [CNC](#cnc)
      - [3d printer workflow/ops](#3d-printer-workflowops)
    - [Documentation of existing POC](#documentation-of-existing-poc)
  - [COO](#coo)
    - [InProgress](#inprogress)
    - [ERPNEXT](#erpnext)
    - [Bizops General](#bizops-general)
    - [Bizops Marketing](#bizops-marketing)
    - [Follow up on these](#follow-up-on-these)

# TSYS December Todo List

## Outreach/personal force multiplier
* Setup automations to alert me via pushover to take breaks, drink water, switch locations etc
* Finish paypal/venmo/cash app/buy me a coffee/patreon/librepay/github sponsors profile/banking setup
* Get all contacts consolidated and into Monica CRM
* Setup wordpress cross posting to discord/discourse/facebook/linked in/twitter 

## CIO

### Technical Operations

- CIO:Communications:Migrate lists.thefnf.org from tsys-cloud-www to cloudron
- CIO:CTOWorkStation:google earth
- CIO:CTOWorkstation:flora
- CIO:CTOWorkstation:gephi
- CIO:CTOWorkstationSetup:metasploit and armitage (maybe other gui as well? msfgui?)
- CIO:CTOWorkstationSetup:fonts
- CIO:CTOWorkstationSetup:powerline10k
- CIO:CTOWorkstationSetup:posh
- CIO:Documentation: Adding a VPN user
- CIO:Documentation: Migrate final bits from IT wiki to TSYS handbook
- CIO:Documentation: Move VsCode onboarding section to main engineering onboarding section in handbook
- CIO:SecOps:Auth:Setup authelia <https://github.com/linuxserver/docker-swag> <https://github.com/authelia/authelia> <https://www.linuxserver.io/blog/2020-08-26-setting-up-authelia>
- CIO:SecOps: Setup Internal CA (offline root CA : use XCA on an airgap workstation and XCA on CA VM with the HSM intermediate device passed through)
- CIO: Get FetchApply setup (port newSrv.sh to it) (in progress)
- CIO: System / dashboard inventory (merge into handbook) (in progress)
- CIO: UPS (blocked)
- CIO:LabSetup:scansnap (on my laptop and lab laptop)

### RF Chamber

#### Overview

- <https://www.sparkfun.com/tutorials/398>
- <https://www.tek.com/blog/pre-compliance-emc-test-equipment-guide-radiated-emissions>
- <https://www.digikey.com/en/articles/the-fcc-road-part-15-from-concept-to-approval>
- <https://hackaday.com/2016/09/19/preparing-your-product-for-the-fcc/>
- <https://www.nutsvolts.com/magazine/article/low-cost-emi-pre-compliance-testing>
- <https://medium.com/supplyframe-hardware/first-time-fcc-testing-for-a-custom-product-ef618da08bac>
- <https://emcfastpass.com/cert-ebook/>
- <https://connectivity-staging.s3.us-east-2.amazonaws.com/s3fs-public/2019-03/Pre-Scan-White-Paper-v1_0.pdf>
- <https://interferencetechnology.com/how-to-build-your-own-emi-troubleshooting-and-pre-compliance-kit/>
- <https://www.rtl-sdr.com/tag/vna/>

#### Hardware

- <https://github.com/Ttl/vna>
- <https://tinkerman.cat/post/rf-power-monitoring-tools-on-the-cheap/>

#### Process

#### Enclosure

- <http://eor.berkeley.edu/wp-content/uploads/2011/09/p004.rbradley.pdf>
- <https://www.microwavejournal.com/articles/25704-basic-rules-for-anechoic-chamber-design-part-one-rf-absorber-approximations>
- <http://eagle.chaosproject.com/sandbox/acstrial/newsletters/summer08/pp2.pdf>
- <https://www.mikrocontroller.net/attachment/89388/dip_icheln.pdf>
- <https://www.masttechnologies.com/products/defense/rf-absorbers/cavity-resonance-0-040/>
- <https://arxiv.org/pdf/1808.00820.pdf>
- <http://www.opensourceinstruments.com/Electronics/A3018/Faraday_Enclosures.html>
- <https://www.lessemf.com/fabric.html>

to categorize

- <https://www.researchgate.net/profile/Moray-Rumney/publication/286591732_Practical_active_antenna_evaluation_using_the_two-stage_MIMO_OTA_measurement_method/links/56e6cd7408ae65dd4cc1d3ac/Practical-active-antenna-evaluation-using-the-two-stage-MIMO-OTA-measurement-method.pdf?origin=publication_detail>
- <https://www.stupid-projects.com/emc-probe-using-rtl-sdr/>
- <https://nanorfe.com/nanovna-v2.html>
- <https://www.rtl-sdr.com/tag/vna/>
- <https://www.rtl-sdr.com/vector-measurements-with-an-rtl-sdr-and-hackrf-based-system/>
- <https://www.analog.com/en/design-center/evaluation-hardware-and-software/evaluation-boards-kits/adalm-pluto.html#eb-overview>
- <https://hforsten.com/cheap-homemade-30-mhz-6-ghz-vector-network-analyzer.html>
- <https://www.jpier.org/PIER/pier138/31.13030606.pdf>



#### Software

- <https://github.com/AD-Vega/rtl-power-fftw>
- <http://swigerco.com/gnuradio/>
- <https://www.techplayon.com/smart-antennas-beamforming-understanding-gnu-part-1/>
- <https://github.com/pavels/spektrum>
- <http://ab-initio.mit.edu/wiki/index.php?title=Meep>
- <https://github.com/AlexandreRouma/SDRPlusPlus/releases>

##### SDR server

Idea is to use the raspi4 on the lab bench, with the various SDR/pluto USB radios hung off it and stream the output to the (either/or) upstairs GPU farm or downstairs gpu/cpu server farm for processing.

- <https://e.pavlin.si/2021/12/11/multiband-sdr-with-remote-receivers/>
- <https://www.rtl-sdr.com/sdr-server-beta-now-available/>
- <https://www.rtl-sdr.com/tag/spyserver/>
- <https://www.rtl-sdr.com/tag/spyserver/page/2/>
- <https://www.rtl-sdr.com/rtl-sdr-tutorial-setting-up-and-using-the-spyserver-remote-streaming-server-with-an-rtl-sdr/>
- <https://github.com/pothosware/SoapyRemote>
- <https://github.com/pothosware/SoapySDR/wiki>

### EE

- Setup openocd server <https://forum.sparkfun.com/viewtopic.php?t=48276> and <http://openocd.org/doc/html/Server-Configuration.html>
- Setup sigrok with logging multimeter

<https://sigrok.org/>
<https://sigrok.org/wiki/UNI-T_UT61E>
<https://www.google.com/search?q=sigrok+uni-t&rlz=1C9BKJA_enUS945US945&oq=sigrok+uni-t&aqs=chrome..69i57.5133j0j4&hl=en-US&sourceid=chrome-mobile&ie=UTF-8>

- Setup bus pirate <http://dangerousprototypes.com/docs/Bus_Pirate#Download>
- Setup document camera <http://runeman.org/articles/natick-foss/ziggi-hd/>
- Setup USB microscope <https://www.adafruit.com/product/636> and <https://plugable.com/pages/microscope-drivers>
- Setup jtag <https://www.digikey.com/en/products/detail/ST-LINK%2fV2/497-10484-ND/2214535?itemSeq=371798146> and <https://github.com/stlink-org/stlink> and <http://openocd.org/doc/html/Debug-Adapter-Configuration.html> (google openocd st-link v2 ) (maybe add jtag as well)

### CNC/3d

We have a crealty ender (something) which has laser cuter, filament extruder, cnc. 

We also have monoprice 3d printers.

#### CNC

The following are some options to drive the controller

- <https://github.com/vlachoudis/bCNC>
- <https://github.com/synthetos/TinyG/wiki/Chilipeppr>
- <https://winder.github.io/ugs_website/guide/platform/>

Depending on maintenance , installation difficulty, features etc, may end up with multiple options.

#### 3d printer workflow/ops

Evaluate

- <https://octoprint.org/download/>
- <https://github.com/MatterHackers/MatterControl>
- <https://www.repetier-server.com/>

Leaning towards MatterControl

MatterControl has an issue post install, bug report at <https://github.com/MatterHackers/MatterControl/issues/5096>


```
For the above items that present serial port over USB, we need to setup persistent device names.

Here is some text on how to do that from <http://wiki.mattercontrol.com/Development/Running_on_Linux>

"
Assigning Serial Ports

On Linux, serial port assignments can change whenever a printer is connected or disconnected. MatterControl cannot tell which printer is connected to which serial port. You can setup a udev rule to permanently assign a unique port to your printer.

Do ls /dev/tty* before and after connecting your printer to find out which port it is assigned to. Printers will show up as either /dev/ttyACM# or /dev/ttyUSB#.

Use udevadm to get the serial number (UUID) of the USB device. This is a unique 20 digit hexadecimal value.

$ udevadm info --attribute-walk -n /dev/ttyACM0 | grep "serial"

Some printers will not report a serial number. In this case, you will have to use other attributes to identify it such as the vendor ID (idVendor) and the product ID (idProduct).

Create a file /etc/udev/rules.d/97-3dprinters.rules. Here is an example with rules for two printers.

SUBSYSTEM=="tty", ATTRS{serial}=="6403237383335190E0F1", GROUP="uucp", MODE="0660", SYMLINK+="tty-taz"
SUBSYSTEM=="tty", ATTRS{idVendor}=="16d0", ATTRS{idProduct}=="076b", GROUP="uucp", MODE="0660", SYMLINK+="tty-kosselpro"

Fill in either the serial number or vender and product IDs based on the information you obtained earlier. Make sure GROUP is set to the same group ownership as the rest of your serial ports. This is usually dialout on Debian or uucp on Arch. You can check by doing ls -l /dev/ttyACM*. Lastly, give your printer a unique name for the SYMLINK. This name must start with tty or it will not show up in the list in MatterControl.

The next time you connect the printer, a symlink will automatically be created that points to the correct serial device. You can now edit the printer in MatterControl and choose the new device.
"

Here is an example rule from a production system at tsys:

root@pfv-vmsrv-04:/etc/udev/rules.d# cat 99-usb-serial.rules

# examples from

# <http://hintshop.ludvig.co.nz/show/persistent-names-usb-serial-devices/>
# <https://medium.com/@inegm/persistent-names-for-usb-serial-devices-in-linux-dev-ttyusbx-dev-custom-name-fd49b5db9af1>

# SUBSYSTEM=="tty", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="7523", SYMLINK+="rah-ctrl"

# SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", ATTRS{serial}=="A6008isP", SYMLINK+="arduino"

# SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", ATTRS{serial}=="A7004IXj", SYMLINK+="buspirate"

# SUBSYSTEM=="tty", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", ATTRS{serial}=="FTDIF46B", SYMLINK+="ttyUSB.ARM"

# Apply changes via

#

# udevadm control --reload-rules && sudo udevadm trigger

#

####################################

# USB serial for UPS

####################################

# Bus 002 Device 045: ID 067b:2303 Prolific Technology, Inc. PL2303 Serial Port

# root@pfv-vmsrv-03:~# udevadm info --name=/dev/ttyUSB2 --attribute-walk|grep -i vendor

# ATTRS{idVendor}=="067b"

# ATTRS{idVendor}=="2109"

# ATTRS{idVendor}=="8087"

# ATTRS{idVendor}=="1d6b"

# ATTRS{subsystem_vendor}=="0x1028"

# ATTRS{vendor}=="0x8086"

# root@pfv-vmsrv-03:/etc/snmp# udevadm info --name=/dev/ttyUSB2 --attribute-walk|grep -i serial

# SUBSYSTEMS=="usb-serial"

# ATTRS{product}=="USB-Serial Controller"

# ATTRS{serial}=="0000:00:1d.0"

# root@pfv-vmsrv-03:/etc/udev/rules.d#  udevadm info -a -n /dev/ttyUSB0 | grep '{serial}' | head -n1

# ATTRS{serial}=="0000:00:1d.0"

# SUBSYSTEM=="tty", ATTRS{idVendor}=="067b", ATTRS{idProduct}=="2303", ATTRS{serial}=="0000:00:1d.0", SYMLINK+="ups4"

SUBSYSTEM=="tty", ATTRS{idVendor}=="067b", ATTRS{idProduct}=="2303", SYMLINK+="ups4"
####################################

# USB serial for sifive

####################################
####################################

# USB serial for parallella

####################################

<https://research.kudelskisecurity.com/2014/05/01/jtag-debugging-made-easy-with-bus-pirate-and-openocd/>

and

<https://www.google.com/search?q=openocd%20bus%20pirate&ie=utf-8&oe=utf-8&client=firefox-b-1-m>

would be some things to check out.
```

### Documentation of existing POC

- POC Hardware
- Software Engineering tooling stack
- Hardware Engineering tooling stack
- Mechanical/Industrial design tooling stack
- Software Engineering supply chain (software components) stack
- Hardware Engineering supply chain (hardware/software components ) stack


## COO

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
- Create Emergency Action Plan
- Gather insurance requirements
- Obtain insurance coverage
- Create bank account for Turn Net Systems LLC
- Obtain EIN for Turn Net Systems LLC
- Recover PKI safe combination
- Update RR/Subo LLC Operating Agreements using fairshares model
- setup designated out of band agent for business continuity in event of CEO and COO incapacity or death
- review EAP/continuity plan generally
- Follow fidsafe check lists
- Upload everything into fidsafe and ensure out of band recovery agent has access
- Photograph/inventory all TSYS Group assets
- (re)setup Side Door PAC
- Bring FEC paperwork current
- Figure out FEC software
- Update Charles Wyble Power Of Attorney and setup quarterly / yearly review
- Create/finalize stand alone / subsidiary entities:
- Finalize operating agreement with following series language

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

### ERPNEXT

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

### Bizops General

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

### Bizops Marketing

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
