---
title: Serverless Applications
description: Using Cloudflare for Applications
layout: post
category: blog
tags: life plans dev
---

I've been looking into CloudFlare's other options, currently I'm using it for my DNS and this website's hosting, but I've been thinking about doing more.

I've realized that it's entirely possible to cheaply host something they call durable objects and program them to be used in replacement of a vps.

## Potential Upsides

My plan involves using durable objects to host data for an online multiplayer game. I don't know how far I will get, but at least I can use this to super cheaply host and update high-scores. My understanding right now is that durable objects are variants of cloudflare workers that guarantees only one is running and changing data. Traditional workers exist in multiple places and would cause problems when trying to keep everything in sync between two players.

## Potential Downsides

The costs can stack up, so I need to be smart about how many durable objects I make and how many times I update the data in storage.

The next thing I'll be doing is attempting a high-score system for my succulent game, as well as addressing some bugs in that game.

With success there I'll probably attempt a much bigger project involving this cheap online storage hosting method.

I hope this was interesting, have a great week!

