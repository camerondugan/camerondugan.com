---
title: Wizard Workshop Part 2
description: Progress and cool in-engine gifs
layout: post
category: blog
tags: game code dev
---

## New Features

Here's another sneak preview at what I've been working on so far:

### Pip Drawer

![Drawer in game](http://files.camerondugan.com/Drawer.gif)

The drawer you saw holds pips. Pips are magic trinkets that can bestow you great
power if used correctly.

### Shop

![Shop](https://files.camerondugan.com/Shop.gif)

I've also created a shop between fights to let you buy and sell cards, pips,
and upgrades.

### More Colors

![More Colors](https://files.camerondugan.com/Cards.gif)

I've swapped the color palette to something more modern. I've realized that I
don't like the mono-color palette as much as a palette with a wider selection.

## Bug Fixes

I've fixed many issues with the way that the game handles memory. In gdscript,
if you create a new node outside of the \_ready(): method, you can easily leak
memory. Even if you declare in your \_ready() add_child(your_node), there's a
chance that your code outside of ready runs and \_ready() never runs, making a
node that isn't tracked and never gets freed.
