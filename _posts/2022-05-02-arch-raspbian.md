---
title: Being An Arch User
description: An Unexpected Consequence
layout: post
permalink: /blog/arch-rasbian/
tags: linux dev arch
---

Hi,
I woke up today wanting to make my [Raspberry Pi](https://www.raspberrypi.org/) even more useful.

Currently, it's tasked with hosting [this website](https://camerondugan.com), and it used to host an email until it randomly stopped working after an update.

Anyways, I tried to setup [Syncthing](https://syncthing.net/) as a pseudo NAS, to let me auto-sync my files remotely without needing both the destination and the source online at the same time.

I installed [Syncthing](https://syncthing.net/), and setup [nginx](https://www.nginx.com/resources/glossary/nginx/) to passthrough the gui port localhost:8384 for [Syncthing](https://syncthing.net/) to a specific url on my website. This worked, the user interface for [Syncthing](https://syncthing.net/) appeared and I was able to connect to other devices. The problem: no files were being synced.

The exact issue I was having was a tcp connection version mismatch, one device wanted to use 303 and another wanted 301.

I spent probably about 20 minutes tinkering with [nginx](https://www.nginx.com/resources/glossary/nginx/) before realizing that everything was working perfectly and it wasn't some strange [nginx](https://www.nginx.com/resources/glossary/nginx/) background filtering or conversion. It's just that I am so used to [Arch](https://archlinux.org/) packages being up to date, that I never even considered that I would have to manually setup the [Syncthing](https://syncthing.net/) repo for the [Raspberry Pi](https://https://www.raspberrypi.org/).

After setting up apt to fetch the latest version of [Syncthing](https://syncthing.net/), everything ran perfectly smoothly. I just can't believe that this is a thing people still have to do to install updated software on Linux. I understand why it hasn't been fixed, but I would have expected maybe a community wiki+script pre-installed that connects package names to their official PPAs for you. Other distros should probably have one over-arching piece of software that can handle installing pretty much anything in one quick command like [Arch](https://archlinux.org/) does (like the paru command and it's substitutes). Maybe this exists, idk, and I'm not super interested. I just got used to expecting easily installible updated software on [Arch](https://archlinux.org/).

Also for anyone interested, I got tired of fixing my [Arch](https://archlinux.org/) install when it rarely broke, so I just switched to [Garuda](https://garudalinux.org/), which has more than all the settings and software I would have setup anyway.

Repair/Reinstallation time from 1-3hrs down to 30min tops.

That's my weird story for today, thanks for sticking around :)

P.S.
I do know that I can install ARM based Arch distros onto the pi, but I'm lazy and it's already setup. Maybe another day, I've been looking into [NIXOS](https://nixos.org/), maybe that's a good choice, we'll see...

