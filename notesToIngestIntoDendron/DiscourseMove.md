- [Discourse-Mov e](#discourse-mov-e)
  - [Target : Handbook CIO](#target--handbook-cio)
    - [Camera](#camera)
    - [SSH to systems](#ssh-to-systems)
  - [SSH config snippet](#ssh-config-snippet)
  - [access tester script](#access-tester-script)
    - [Factory as Product](#factory-as-product)
      - [Supporting infrastructure](#supporting-infrastructure)
      - [Inventory](#inventory)
        - [Component Inventory](#component-inventory)
        - [Tool Inventory](#tool-inventory)
        - [Equipment Inventory](#equipment-inventory)
          - [Bench top Equipment List](#bench-top-equipment-list)
  - [Target: KNEL Discourse](#target-knel-discourse)
    - [Target: Nextcloud](#target-nextcloud)
  - [Target : Handbook CTO](#target--handbook-cto)
    - [Avionics Mock up](#avionics-mock-up)
    - [Avionics Test bed](#avionics-test-bed)

# Discourse-Mov e


## Target : Handbook CIO

### Camera

(screen cap of the stream)

admin/subodev
click server push mode

you’ll have access to the live lab cam. this is useful for working on hardware remotely when you need to checkout antenna movement, parafoil movement etc

it’s also infrared, so works in the dark (i keep a few constant low light sources going in the garage as required by code)

plus the camera has infrared led that auto activate/de-activate with light off/on

### SSH to systems

If you are working on suborbital development for tsys, this article contains all the access particulars. 

## SSH config snippet 

```
#######################################################################################################
#Development systems - Suborbital Systems/MeetMorse
#######################################################################################################

#######################################################################################################
#raspberry pi units for groundstation/avionics test/etc 
#######################################################################################################

Host subopi1
		Hostname 10.251.10.4
		User pi

Host subopi2
		Hostname 10.251.10.5
		User pi

Host subopi3
		Hostname 10.251.10.6
		User pi

Host subopi4
		Hostname 10.251.10.7
		User pi


Host subopi5
		Hostname 10.251.10.8
		User pi


Host subopi6
		Hostname 10.251.10.9
		User pi


#######################################################################################################
#support systems for lab equipment control, dev/qa/prod infra 
#######################################################################################################

Host subobench
		Hostname 10.251.10.3
		User pi

Host subodev
		Hostname 10.251.10.240
		User subodev
Host suboqa
		Hostname 10.251.10.241
		User subodev

Host suboprod
		Hostname 10.251.10.242
		User subodev

Host buildbox
                User localuser
                Hostname 10.251.30.82

```

## access tester script 

```
#!/bin/bash

IFS=$'\n\t'

suboNodeList=(
"subopi1" #MorsePod m6
"subopi2" #seeduino lora gateway hat
"subopi3" # no hat
"subopi4" #dragino hat
"subopi5" #pi sense hat
"subopi6" #pi sense hat
"subodev" #develop workloads
"suboqa" #test workloads
"suboprod" #run actual workloads here
"buildbox" #build all the things
"subobench" #benchtop computer
)

for suboNode in ${suboNodeList[@]}; do 
        #COMMAND="$(ssh $suboNode md5sum .ssh/authorized_keys)"
        #echo "Testing ssh authorized_keys on $suboNode" $COMMAND
        #COMMAND="$(ssh $suboNode date )"
        #echo "Testing on $suboNode" $COMMAND
        COMMAND="$(ssh $suboNode uptime)"
        echo "Testing load on $suboNode" $COMMAND
done

```

### Factory as Product 

In the spirit of :

1) reproducibility 
2) factory as product 

We are documenting the TSYS shop/lab in detail, so that others can build out a lab. We hope this document becomes the premier internet "one stop shop" resource for lab builders . It took us quite a bit of time/experimenting/reading/working on projects to figure out what was needed. We have documented the results of all that here, to save you the effort!

Below please find the individual articles on various sub module topics that we've written. 


####  Supporting infrastructure

* https://community.turnsys.com/t/tsys-electronics-lab-supporting-infrastructure/155 (was just an outline, deleted the topic and will re-create from scratch in handbook)

#### Inventory 


##### Component Inventory 

TODO

* https://community.turnsys.com/t/tsys-electronics-lab-component-inventory/156/2

Ah yes.... this is probably the most controversial topic in our lab series. What components to stock. The short answer: depends on what you are doing. However many projects need common items. So we will only include things we consider essential for a wide majority of projects. We will do separate posts in a separate series for anything suborbtial prototype/production specific. 

(link to nextcloud hosted spreadsheet here)


##### Tool Inventory 

TODO Add pics of all the drawers


Inputs we used to build the list:

* https://predictabledesigns.com/electronic-lab-setup-tools-and-equipment-requirements/
* https://www.engineersgarage.com/tutorials/articles-beginners-guide-to-setup-electronics-lab/
* https://www.instructables.com/Electronics-Workbench-Equipment-List/
* https://www.jaysonjc.com/diy/how-to-set-up-an-electronics-labworkshop-at-home.html

and just a general google of "electronics workbench setup" "electronics lab build" etc. 

Our list contains everything in common between the above lists, as well as the unique items from each list, and a few additional items we've found to be useful. 

This is a wiki post, and will be updated by everyone as we go forward. Since I did the initial build, I am doing initial documentation. 

* Fire Suppression : https://www.firstalert.com/fire-extinguishers/ez-fire-spray/
* PCB vise: https://www.panavise.com/index.html?pageID=1&page=full&--eqskudatarq=503
* Hand Tool Storage (see next section for documentation of contents)


from bottom drawer to top drawer (with toolbox last) (we consider the drawers/toolbox a single unit) (see next section for the links to the drawers/toolbox containers we use)

Optics Drawer:

* Handheld standard magnifying glass
* Headband LED magnifier: https://www.jensentools.com/eclipse-proskit-ma-016-headband-led-magnifier/p/711in016

Screwdriver Drawer:

* Precision screwdriver set: https://www.geekbuying.com/item/JVMAC-2408A-16-in-1-Toolset-Screwdriver-Repair-Tools-Kit-Set-For-Mobile-Phone-Electronics-366037.html
* Misc screwdrivers (jewelers set, pen multi tip screwdrivers)

Cut / File / Strip Drawer:

* Hand file set: https://www.homedepot.com/p/Husky-Multi-Purpose-File-Set-10-Piece-H10PCFS/206313272
* Utility Shears: https://www.harborfreight.com/6-inch-utility-shears-67145.html
* Hole Punch Set: https://www.walmart.com/ip/Hyper-Tough-Ht-6pc-Pin-Punch-Set/17325866
* Wire Strippers: https://www.walmart.com/ip/Hyper-Tough-6-Inch-Wire-Stripper-with-Non-Slip-Grips/296832054 

Precision Tools Drawer:

* Precision Knife Set: https://www.harborfreight.com/56-piece-precision-knife-set-36410.html
* non esd tweezers: https://www.harborfreight.com/6-pc-fine-point-tweezer-set-93598.html?_br_psugg_q=tweezers

* esd safe tweezers:
https://www.adafruit.com/product/421
https://www.adafruit.com/product/422
https://www.ifixit.com/Store/Tools/Precision-Tweezers-Set/IF145-060?o=3

* Flush cutters: https://www.altex.com/xuron-micro-shear-flush-cutter-with-lead-retaining-clip

Measuring Drawer

* Tape Measure: https://www.walmart.com/ip/Hyper-Tough-12-Foot-Tape-Measure-with-Large-Markings/792496412
* Level: https://www.walmart.com/ip/Hyper-Tough-9-Inch-Level-with-90-Degree-Quick-Check/624249115

Soldering Drawer

* Solder: https://www.altex.com/mg-chemicals-4900-18g-21-gauge-lead-free-solder-pocket-pack
* Soldering Flux: https://www.altex.com/caig-rosin-soldering-flux
* Liquid Soldering Flux: https://www.altex.com/gc-liquid-solder-flux-2-oz.
* No clean flux paste: https://www.altex.com/m.g.-chemicals-no-clean-flux-paste-10ml
* Paste Flux:  https://www.altex.com/qualitek-paste-flux-2-oz.
* Hakko 599B : https://www.hakko.com/english/products/hakko_599b.html 
* Digital Calipers : (don’t remember where mine came from. Frys?. Available from many retailers).


Prototyping Drawer

* Breadboards: https://www.amazon.com/gp/product/B07DL13RZH/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1 
* SOIC Clip: https://www.amazon.com/CPT-063-Test-Clip-SOIC8-Pomona/dp/B00HHH65T4/ref=sr_1_3?dchild=1&keywords=soic+clip&qid=1612814963&sr=8-3
* BS1 Serial Adapter: http://www.efx-tek.com/topics/bs1-sa.html

Test Leads/ESD (some moved to Craftsman toolbox for space reasons) 

* Anti ESD Mat / Strip : https://www.ifixit.com/Store/Tools/Portable-Anti-Static-Mat/IF145-202
* Multi meter leads http://www.extech.com/products/TL831
* Bitscope leads: http://my.bitscope.com/store/?p=list&a=list&i=cat+probe

Toolbox (1,2,3) on shelving above bench

* Screwdriver set: https://www.altex.com/eclipse-62-piece-security-bit-set
* Multi meter: https://www.harborfreight.com/11-function-digital-multimeter-with-audible-continuity-61593.html 
* Screw Gun: https://www.harborfreight.com/48v-14-in-cordless-screwdriver-kit-56544.html
* Test Leads: https://www.harborfreight.com/18-inch-low-voltage-multi-colored-test-leads-66717.html
* Non contact voltage tester: https://www.harborfreight.com/non-contact-voltage-tester-63919.html?_br_psugg_q=voltage+tester
* Pliers set (stored to right of bench): https://www.harborfreight.com/pliers-set-with-comfort-grips-5-pc-64136.html (stored in : https://www.harborfreight.com/15-compartment-adjustable-plier-rack-56399.html) (a bit fiddly to adjust, have to sweet talk it a bit)
* Hook/pick set: https://www.walmart.com/ip/Hyper-Tough-4-Piece-Hook-and-Pick-Set-with-Soft-Grip-Handles-9909/42350189
* Rivet: https://www.walmart.com/ip/Hyper-Tough-9-5-inch-Rivet-Tool-with-40-Assorted-Rivets-TN12556J/812577370
* Drill bits: https://www.homedepot.com/p/DEWALT-Black-and-Gold-Drill-Bit-Set-29-Piece-DWA1189/205952650
* Wrenches: https://www.harborfreight.com/hand-tools/wrenches/12-piece-stubby-combination-wrench-set-97383.html

 Shelving to right of bench

* Small Fridge (solder paste long term storage) : http://www.walmart.com/ip/Frigidaire-Portable-Retro-12-Can-Mini-Fridge-EFMIS462-Black/279103768
* Personal Cooler (solder paste immediate/short term use):  http://www.walmart.com/ip/Personal-Chiller-Mini-Fridge-Small-Space-Cooler-Black-K4105MTBK/641746796
* Lab Power Supplies (couple of high volt/amp donor wall warts, and multiple RocketFish AC/DC with tips)

Closet storage

* Storage Bags: Plastic (scavenged) 
* Storage Bags: (scavenged)

Storage on wall/Containers


* Tool drawers: (container store, tracking down product link) 

* Shoebox Totes:

* Component Storage Drawers (large): https://www.lowes.com/pd/CRAFTSMAN-Bin-System-9-Compartment-Plastic-Small-Parts-Organizer/1000578349
* Component Storage Drawers (small): https://www.lowes.com/pd/CRAFTSMAN-Bin-System-30-Compartment-Plastic-Small-Parts-Organizer/1000578345 



##### Equipment Inventory

###### Bench top Equipment List

* Small circulation fan (solder fume removal): (Standard USB 5v , available from many retailers)
* Large circulation fan (solder fume removal): (9v dc barrel jack or battery operated, I bought it at HomeDepot, cant find the product on the website now, of course I'm sure many retailers sell desktop fans)
* Rework / solder station: http://www.aoyue3d.com/en/pro/default.asp?id=52
* Bitscope USB oscilliscope : https://www.bitscope.com/product/BS05/ 
* Lumens Document Camera (great for looking at PCB on screen and doing documentation) : https://www.mylumens.com/en/Products_detail/41/DC172
* Multimeter: https://www.cnx-software.com/2014/10/19/50-uni-t-ut61e-digital-multimeter-supports-data-logging-to-a-windows-computer/ and https://www.uni-trend.com/meters/ (take your pick for price/features) (we have the https://www.uni-trend.com/meters/html/product/NewProducts/UT61%20161%20Series/UT61E+.html )
* Bus Pirate (jtag and other low level bit twiddling) : https://www.sparkfun.com/products/12942
* USB microscope: https://www.adafruit.com/product/636
* DC Power Supply: https://usa.banggood.com/KORAD-KA3005D-0~30V-0~5A-Precision-Adjustable-DC-Power-Supply-DC-Digital-Control-with-Test-Leads-p-944574.html?cur_warehouse=CN&ID=43101&rmmds=buy 
* Desktop magnifying lamp: https://www.harborfreight.com/desktop-magnifying-lamp-60642.html
* Windows 8 PC , running various software packages (cheese, sigrok, openocd, etc etc ) Docs on bench top computer soon. TODO document the software load out



## Target: KNEL Discourse

### Target: Nextcloud

## Target : Handbook CTO

### Avionics Mock up

TODO Pics/text 


### Avionics Test bed

TODO Pics/text 