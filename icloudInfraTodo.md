TSYS infrastructure Todo

This documents the last few items for Charles to deliver as CIO. Charles is doing Core IT/business enablement and handling moving all the data off his laptop and into the systems.

Albert will run everything day to day as COO. Patti will handle everything finance related.


- [Misc](#misc)
- [CIO/enterprise IT/Platform IT (due by end of day Sunday)](#cioenterprise-itplatform-it-due-by-end-of-day-sunday)
- [CTO Techops (due by 05/29) (with core setup done by 04/29)](#cto-techops-due-by-0529-with-core-setup-done-by-0429)
  - [General utiliy / enablement](#general-utiliy--enablement)
  - [Technical Operations](#technical-operations)
  - [Documentation of existing POC](#documentation-of-existing-poc)
  - [ETL framework](#etl-framework)
  - [R\&D CTO enablement](#rd-cto-enablement)
  - [Mobile todos](#mobile-todos)
  - [Geospatial stack](#geospatial-stack)
  - [Grib and other weather data processing](#grib-and-other-weather-data-processing)
- [Electronic Design Automation stack](#electronic-design-automation-stack)
  - [RF Chamber](#rf-chamber)
  - [Overview](#overview)
  - [Hardware](#hardware)
    - [Process](#process)
  - [Enclosure](#enclosure)
  - [to categorize](#to-categorize)
  - [Software](#software)
    - [SDR server](#sdr-server)
  - [EE](#ee)
- [CNC/3d printing](#cnc3d-printing)
  - [CNC](#cnc)
  - [3d printer workflow/ops](#3d-printer-workflowops)
  - [OpenScan 3d scanner](#openscan-3d-scanner)
  - [Misc notes](#misc-notes)


## Misc

- Setup automations to alert me via pushover to take breaks, drink water, switch locations etc
- Finish paypal/venmo/cash app/buy me a coffee/patreon/librepay/github sponsors profile/banking setup
- Get all contacts consolidated and into Monica CRM
- Setup wordpress cross posting to discord/discourse/facebook/linked in/twitter
- <https://news.ycombinator.com/item?id=10884209>
- <<https://news.ycombinator.com/item?id=10833213>

## CIO/enterprise IT/Platform IT (due by end of day Sunday)


- Get woodpecker agent configured and deployed on all three docker hosts 
- Deploy NetBird 
- Create comprehensive docker container list and pull to tsys1
- Setup cloudron backups to b2
- Fix nextcloud file lock issue
- Static file hosting… mdbook/mkdocs -> cloudron surfer? also gitea actions and woodpecker CI to sync to surfer? Or if staying with markdown , GitHub pages? Also grav with git sync plugin is looking tempting.
- Configure discourse elasticsearch full text search
- configure nextcloud elasticsearch full text search

## CTO Techops (due by 05/29) (with core setup done by 04/29)

### General utiliy / enablement

- draw.io  server (<https://www.drawio.com/blog/diagrams-docker-app>) for nextcloud to utilize
- Librenms docker
- Grocy on home assistant
- Setup dashboard container from conhost
- draw.io server (<https://www.drawio.com/blog/diagrams-docker-app>) for nextcloud to utilize
- Setup LocalAI
- Setup LibreTranslate
- Setup elasticsearch
- Woodpecker agent on all three tsys systems (agent registers to woodpecker via web sockets) (this gets us CI/CD runners)
- Dokku paas (Ubuntu server hyper v virtual machines) (will be used for tsys custom apps like hfnoc signup) (tie in via tailscale using app proxy on cloudron)
- Minio configuration
- Vault configuration
- Docker registry: <https://goharbor.io/docs/2.10.0/administration/>

### Technical Operations

- CIO:Communications:Migrate lists.thefnf.org from tsys-cloud-www to cloudron
- CIO:CTOWorkStation:google earth
- CIO:CTOWorkstation:flora
- CIO:CTOWorkstation:gephi
- CIO:CTOWorkstationSetup:metasploit and armitage (maybe other gui as well? msfgui?)
- CIO:Documentation: Migrate final bits from IT wiki to TSYS handbook
- CIO:Documentation: Move VsCode onboarding section to main engineering onboarding section in handbook
- CIO:SecOps: Setup Internal CA (offline root CA : use XCA on an airgap workstation and XCA on CA VM with the HSM intermediate device passed through)
- CIO:LabSetup:scansnap (on my laptop and lab laptop)

### Documentation of existing POC

- POC Hardware
- Software Engineering tooling stack
- Hardware Engineering tooling stack
- Mechanical/Industrial design tooling stack
- Software Engineering supply chain (software components) stack
- Hardware Engineering supply chain (hardware/software components ) stack

### ETL framework

- [https://seatunnel.apache.org](https://seatunnel.apache.org/)

### R&D CTO enablement

- sdrangel on tsys3 (hook up rf kit to usb)
- resgrid [https://resgrid.com](https://resgrid.com/) (will be an end of workflow step for shipping to customer)
- sqlfluff in ci/cd [https://sqlfluff.com](https://sqlfluff.com/)
- Setup inventree ([https://inventree.org](https://inventree.org/))
- Deploy kicad container for ci/cd
- <https://www.kicad.org/download/docker/>
- <https://sschueller.github.io/posts/ci-cd-with-kicad-and-gitlab/>
- <https://news.ycombinator.com/item?id=35922207>
- <https://github.com/INTI-CMNB/kicad-ci-test-spora>
- LORA management server : chirpstack ([https://www.chirpstack.io](https://www.chirpstack.io/))
- OTA updates system (mender : <https://github.com/mendersoftware>)

### Mobile todos

<https://www.waveterm.dev>
<https://news.ycombinator.com/item?id=38461101>
<https://news.ycombinator.com/item?id=37800951>
<https://luke.hsiao.dev/blog/housing-documentation/>
<https://hazyresearch.stanford.edu/legalbench/>
<https://about.maps.earth>
<https://github.com/imartinez/privateGPT>
<https://github.com/vanila-io/wireflow>
<https://medium.com/@DiggerHQ/5-open-source-alternatives-to-your-current-infrastructure-tool-stack-3e66a17728ac>
<https://github.com/MeetKai/functionary>
<https://github.com/ShishirPatil/gorilla>
<https://github.com/openvmp/partcad>
<https://news.ycombinator.com/item?id=38785458>
<https://github.com/kuchin/awesome-cto>
<https://theartofhpc.com>
<https://zachgoldberg.com/ctohandbook/>


### Geospatial stack

- <https://wcedmisten.fyi/post/self-hosting-osm/>
- [https://openmaptiles.org](https://openmaptiles.org/)
- <https://www.maptiler.com/server/openstreetmap/>
- <https://www.muckrock.com/news/archives/2024/feb/13/release-notes-how-to-make-self-hosted-maps-that-work-everywhere-cost-next-to-nothing-and-might-even-work-in-airplane-mode/>
- <https://gist.github.com/jbaranski/1c2373314a1e4b987e012aa8ebc5f18e>
- <https://simonwillison.net/2021/Feb/4/datasette-tiles/>
- <https://switch2osm.org/serving-tiles/>
- <https://hub.docker.com/r/maptiler/tileserver-gl>
- <https://blog.rtwilson.com/simple-self-hosted-openstreetmap-routing-using-valhalla-and-docker/>
- <https://hub.docker.com/r/postgis/postgis/>

### Grib and other weather data processing

- <https://github.com/DeutscherWetterdienst/python-eccodes?tab=readme-ov-file>
- <https://epic.noaa.gov/get-code/short-range-weather/>
- <https://ufs-srweather-app.readthedocs.io/en/release-public-v2.2.0/BuildingRunningTesting/ContainerQuickstart.html#quickstartc>
- <https://github.com/JCSDA/spack-stack>
- <https://ioos.github.io/erddap-gold-standard/>
- <https://epic.noaa.gov/land-data-assimilation-system/>
- <https://www.weather.gov/climateservices/nowdatafaq>

## Electronic Design Automation stack

- [https://www.klayout.de](https://www.klayout.de/)
- <https://semiwiki.com/wikis/industry-wikis/eda-open-source-tools-wiki/>
- <https://opencores.org/howto/eda>
- <http://opencircuitdesign.com/magic/>
- <https://github.com/RTimothyEdwards/magic>
- [https://open-source-silicon.dev](https://open-source-silicon.dev/)

### RF Chamber

### Overview

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

### Hardware

- <https://github.com/Ttl/vna>
- <https://tinkerman.cat/post/rf-power-monitoring-tools-on-the-cheap/>

#### Process

### Enclosure

- <http://eor.berkeley.edu/wp-content/uploads/2011/09/p004.rbradley.pdf>
- <https://www.microwavejournal.com/articles/25704-basic-rules-for-anechoic-chamber-design-part-one-rf-absorber-approximations>
- <http://eagle.chaosproject.com/sandbox/acstrial/newsletters/summer08/pp2.pdf>
- <https://www.mikrocontroller.net/attachment/89388/dip_icheln.pdf>
- <https://www.masttechnologies.com/products/defense/rf-absorbers/cavity-resonance-0-040/>
- <https://arxiv.org/pdf/1808.00820.pdf>
- <http://www.opensourceinstruments.com/Electronics/A3018/Faraday_Enclosures.html>
- <https://www.lessemf.com/fabric.html>

### to categorize

- <https://www.researchgate.net/profile/Moray-Rumney/publication/286591732_Practical_active_antenna_evaluation_using_the_two-stage_MIMO_OTA_measurement_method/links/56e6cd7408ae65dd4cc1d3ac/Practical-active-antenna-evaluation-using-the-two-stage-MIMO-OTA-measurement-method.pdf?origin=publication_detail>
- <https://www.stupid-projects.com/emc-probe-using-rtl-sdr/>
- <https://nanorfe.com/nanovna-v2.html>
- <https://www.rtl-sdr.com/tag/vna/>
- <https://www.rtl-sdr.com/vector-measurements-with-an-rtl-sdr-and-hackrf-based-system/>
- <https://www.analog.com/en/design-center/evaluation-hardware-and-software/evaluation-boards-kits/adalm-pluto.html#eb-overview>
- <https://hforsten.com/cheap-homemade-30-mhz-6-ghz-vector-network-analyzer.html>
- <https://www.jpier.org/PIER/pier138/31.13030606.pdf>

### Software

- <https://github.com/AD-Vega/rtl-power-fftw>
- <http://swigerco.com/gnuradio/>
- <https://www.techplayon.com/smart-antennas-beamforming-understanding-gnu-part-1/>
- <https://github.com/pavels/spektrum>
- <http://ab-initio.mit.edu/wiki/index.php?title=Meep>
- <https://github.com/AlexandreRouma/SDRPlusPlus/releases>

#### SDR server

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

## CNC/3d printing

We have a crealty ender (something) which has laser cuter, filament extruder, cnc. 

We also have monoprice 3d printers.

We also have an OpenScan 3d scanner.

### CNC

The following are some options to drive the controller

- <https://github.com/vlachoudis/bCNC>
- <https://github.com/synthetos/TinyG/wiki/Chilipeppr>
- <https://winder.github.io/ugs_website/guide/platform/>

Depending on maintenance , installation difficulty, features etc, may end up with multiple options.

### 3d printer workflow/ops

Evaluate

- <https://octoprint.org/download/>
- <https://github.com/MatterHackers/MatterControl>
- <https://www.repetier-server.com/>

Leaning towards MatterControl

MatterControl has an issue post install, bug report at <https://github.com/MatterHackers/MatterControl/issues/5096>

### OpenScan 3d scanner


### Misc notes

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