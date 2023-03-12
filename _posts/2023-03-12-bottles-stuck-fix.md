---
title: Bottles Error Fix
description: Commenting Out a Line Of Code Fixes The Problem
layout: post
permalink: /blog/serverless-applications/
tags: life plans dev
---

I'm posting this because I couldn't find any solutions online.

## The Issue

I'm running Gnome on Arch Linux and I'm using bottles to run a couple of windows games.

I updated my computer and ran into: TypeError: Gtk.CssProvider.load_from_data() takes exactly 3 arguments (2 given)

Bottles froze at Bottles is starting and right after it downloaded 3 small packages. Downgrading to the previous version of bottles didn't work, so it's probably not a problem with bottles, but some system/gtk package versioning issues.

## The Fix

The fix was to run Bottles in the command line via ```bottles```, and to wait for it to give the error.

Open the file that has the error and add a # in front of the line creating the problem. Bottles suddenly works perfectly fine afterwords.

Also, if you have the same issue but this doesn't work, in my case this was just a graphical/gtk issue and could have been avoided by using the ```bottles-cli``` commands to run applications and interact with your bottles.

I hope this helped! 