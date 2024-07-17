---
title: My Development Experience With Godot 3 in VR
description: My Recent Development Shenanigans
layout: post
category: blog
tags: linux godot game dev
---

It's been a while since I've posted anything. I'm going to blame it on my recent issues with [Godot](https://godotengine.org) development for Oculus Quest.

Since I haven't mentioned it, I'm working on a retro-style 3D game. Everything is up to change, might not stay retro, might not stay 3d, but so far the goal was for it to work on the Oculus Quest.

I'm currently working on converting my game from VR back into a normal flat screen game. It's still going to have the code that will allow for VR, but the game's focus is going to have to shift back to the computer experience, optional VR is going to be a maybe.

## My Reasons For The Switch to Flat:
1. VR is hard to debug

    > I'm making the game for fun, this should be easy not hard. Android build time + time to put on headset over and over again to find silly mistakes in my code got old fast.

1. [Godot](https://godotengine.org) doesn't support screen space shaders in VR on Android.

    > I just wanted to reduce the colors the game was outputting or look at the pixels on the screen and apply an effect.

1. [Godot](https://godotengine.org) doesn't seem to allow to set custom lower resolution in VR. (for a retro effect)

    > This really should have been an option through the existing godot system, I'm not going to fish around for a function that modifies this. Also, having the above bullet would have allowed me to down sample the resolution.

1. Setting up all of the Android SDK requirements is too tedious.

    > Every time I reset my computer, or try to develop on a different one, I needed to setup the Android SDK to interface with the Oculus Quest. The SDK works, but setting it up with all of the required tools can be slow and confusing. I'm glad for now I'm saying goodbye Android SDK.
