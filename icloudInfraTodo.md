TSYS infrastructure Todo

This documents the last few items for Charles to deliver as CIO. Charles is doing Core IT/business enablement and handling moving all the data off his laptop and into the systems.

Albert will run everything day to day as COO. Patti will handle everything finance related.

- [CTO Techops (due by 05/29) (with core setup done by 05/17)](#cto-techops-due-by-0529-with-core-setup-done-by-0517)
  - [R\&D CTO enablement](#rd-cto-enablement)
- [Electronic Design Automation stack](#electronic-design-automation-stack)
- [EE](#ee)
- [CNC/3d printing](#cnc3d-printing)
  - [CNC](#cnc)
  - [3d printer workflow/ops](#3d-printer-workflowops)
  - [Misc notes](#misc-notes)
  - [Documentation of existing POC](#documentation-of-existing-poc)
  - [Mobile todos](#mobile-todos)

## CTO Techops (due by 05/29) (with core setup done by 05/17)

- CIO:Documentation: Migrate final bits from IT wiki to TSYS handbook
- CIO:Documentation: Move VsCode onboarding section to main engineering onboarding section in handbook

### R&D CTO enablement

- Setup dashboard container from conhost
- Setup elasticsearch
- Minio configuration
- Vault configuration
- sdrangel on tsys3
- LORA management server : chirpstack ([https://www.chirpstack.io](https://www.chirpstack.io/))
- OTA updates system (mender : <https://github.com/mendersoftware>)
- CIO:CTOWorkStation:google earth
- CIO:CTOWorkstation:flora
- CIO:CTOWorkstation:gephi
- CIO:CTOWorkstationSetup:metasploit and armitage (maybe other gui as well? msfgui?)

## Electronic Design Automation stack

- [https://www.klayout.de](https://www.klayout.de/)
- <https://semiwiki.com/wikis/industry-wikis/eda-open-source-tools-wiki/>
- <https://opencores.org/howto/eda>
- <http://opencircuitdesign.com/magic/>
- <https://github.com/RTimothyEdwards/magic>
- [https://open-source-silicon.dev](https://open-source-silicon.dev/)

## EE

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

### Misc notes


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

### Mobile todos

<https://news.ycombinator.com/item?id=38461101>
<https://news.ycombinator.com/item?id=37800951>
<https://luke.hsiao.dev/blog/housing-documentation/>
<https://hazyresearch.stanford.edu/legalbench/>
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







 Setup home assistant to streamline facility operations
 K Setup HomeChart and Grocy to streamline facility operations

 K Renew Sam registration
 K Update trust
 K Merge 10 questions into handbook
 K Reference ready set , maybe convert to mdbook
 K Merge startup starter package into handbook
 K Merge OA into handbook
 K StartupStarterPackage
 Note
 K Contracts redwood
 K contracts tsys series
 K contracts rackrental and suborbital
 K Two classes of members
 Note
 K Operating account in name of LLc
 K Company agreement
