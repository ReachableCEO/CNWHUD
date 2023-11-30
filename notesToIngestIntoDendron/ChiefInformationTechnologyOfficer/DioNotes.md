# Diogenes Notes

- [Diogenes Notes](#diogenes-notes)
  - [DIO Owned Systems](#dio-owned-systems)
    - [Proxmox](#proxmox)
      - [dio-vm1](#dio-vm1)
      - [dio-vm3](#dio-vm3)
      - [dio-vm3](#dio-vm3-1)
      - [dio-vm4](#dio-vm4)
    - [Laptops](#laptops)
      - [diolaplab1](#diolaplab1)

## DIO Owned Systems

### Proxmox

#### dio-vm1

- IP: 10.3.3.235
- Name: diolaplab1
- Hardware specs:

#### dio-vm3

- IP: 10.3.3.235
- Name: diolaplab1
- Hardware specs:

#### dio-vm3

- IP: 10.3.3.235
- Name: diolaplab1
- Hardware specs:

#### dio-vm4

- IP: 10.3.3.235
- Name: diolaplab1
- Hardware specs:

### Laptops

#### diolaplab1

- IP: 10.3.3.235
- Name: diolaplab1
- Purpose:
- data acquisition/logging/control of rf/vacuum/cyro chambers
- SDR (2x pluto, 1x rtl-sdr v1,v2,v3)
- (currently and for short term (till proxmox cluster is stood up)) development of balloon avionics

- Attached hardware:

```shell
root@diolaplab1:~# lsusb
Bus 002 Device 036: ID 0403:6015 Future Technology Devices International, Ltd Bridge(I2C/SPI/UART/FIFO)
Bus 002 Device 056: ID 0bda:2838 Realtek Semiconductor Corp. RTL2838 DVB-T
Bus 002 Device 046: ID 0bda:2838 Realtek Semiconductor Corp. RTL2838 DVB-T
Bus 002 Device 009: ID 2109:2815 VIA Labs, Inc.
Bus 002 Device 038: ID 0bda:2838 Realtek Semiconductor Corp. RTL2838 DVB-T
Bus 002 Device 037: ID 0403:6015 Future Technology Devices International, Ltd Bridge(I2C/SPI/UART/FIFO)
Bus 002 Device 008: ID 2109:2815 VIA Labs, Inc.
Bus 002 Device 013: ID 2886:800c
Bus 002 Device 012: ID 1cbe:00ff Luminary Micro Inc. Stellaris ROM DFU Bootloader
Bus 002 Device 014: ID 0403:6010 Future Technology Devices International, Ltd FT2232C/D/H Dual UART/FIFO IC
Bus 002 Device 011: ID 0bda:5411 Realtek Semiconductor Corp.
Bus 002 Device 010: ID 0bda:5411 Realtek Semiconductor Corp.
Bus 002 Device 002: ID 8087:0024 Intel Corp. Integrated Rate Matching Hub
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 002: ID 8087:0024 Intel Corp. Integrated Rate Matching Hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
root@diolaplab1:~#