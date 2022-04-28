---
title: Wave Function Collapse
description: Programming Something That Already Exists Without Knowing it Exists
layout: post
permalink: /blog/wave-collapse/
tags: code 3d godot game dev
---

Hello!

I've been bingeing more YouTube content recently and I discovered that there was something called Wave Function Collapse. Basically, given a grid, and some tiles with special rules, write an algorithm that places those tiles in the grid following those rules. Basically Sudoku but more generalized.

This immediately reminded me of a script I wrote in Godot for infinite 3d world generation. I wanted to have specific rooms or hallways placed in a useable way.
I also used "weights" on each tile to make some tiles appear much more frequently.

I created a bunch of "tiles" and added rules saying where other tiles can connect, and generate x number of blocks away from the player, much like Minecraft.

Apparently, what I created is an imperfect version of Wave Function Collapse.

Here's my understanding of what Wave Function Collapse should do.

1. Find the space with the least valid possible tiles
2. Place one of the possible tiles
3. Repeat until no more tiles can be filled.

Obviously, with some back-tracking for when no tiles can be placed, but the board is still not full.

It's so cool to find out that something you worked on in the past are problems that have been perfectly solved by others, and that you can learn from the differences in methods of solution.

Usages of the Wave Function Collapse seem to be for procedural generation or for puzzle solving. 

Here's the links to the videos that reminded me of it:

[Youtube Video #1](https://www.youtube.com/watch?v=2SuvO4Gi7uY)
[Youtube Video #2](https://www.youtube.com/watch?v=20KHNA9jTsE)