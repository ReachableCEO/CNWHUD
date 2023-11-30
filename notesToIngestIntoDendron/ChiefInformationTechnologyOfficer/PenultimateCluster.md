# Penultimate Cluster Guide

## Introduction

This guide covers how TSYS migrated to a containerized setup. 

## Current Situation Report (Q3 2021)

This is covered in exhaustive detail in the handbook. So only a high level summary is provided here for context.

Nothing below (with exception of app layer) changes with the move to containers.

### Physical Compute

Proxmox cluster of three (soon to be 5 once hardware is racked and hooked up) nodes. 
100% virtualized (with exception of badge reader/stratum 1 GPS time server on a raspberry pi)
Only OS on bare metal is proxmox. We plan to run a k8s distribution in a set of virtual machines.

### Storage

Two physical storage arrays (on separate UPS/circuit). 
Multiple pools on the arrays 

### Virtual Compute

We have two opnsense virtual machine (spread across the redundant storage systems)
We have three (soon to be five) database servers (spread across the redundant storage systems)
We have a utility virtual machine (toolbox) and a couple dedicated app machines (sipwise/pihole)

### Networking

* Layer 3 to 7 is redundant (opnsense cluster active/passive)
* Layer 1 and 2 is not redundant (though we have the switches on hand to make it redundant)

### Data/caching Layer

We run a mix of database/caching solutions to support our application catalog. Memcached/redis , mongodb, mysql/postgresql. These run on a set of 3 (soon to be 5) Ubuntu 20.04 virtual machines. They are fronted by haproxy VIP.

## Near term plan 

Step 1: Setup dev environment on devws to fully containerize all applications (devilbox, docker on windows, jenkins/gitea/registry,vm with caprover|git-pipe|??)
Step 2: Setup (in dev) all current properties using git repo -> devilbox -> container workflow
Step 3: Setup (in dev) all apps in docker