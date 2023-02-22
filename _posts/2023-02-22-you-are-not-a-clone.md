---
title: Game Jams
description: What I did during my last game jam
layout: post
permalink: /blog/youarenotaclone/
tags: gamedev codingevent dev
---

Game jams are events where you make a game in a limited amount of time with a small team or alone. Usually game jams are pretty stressful unless you really know what you are doing. There's plenty that happen all of the time. Usually they happen on the weekends, but some last weeks or even a whole month.

## My Most Recent Experience

Last weekend I did a game jam with 3 random people in person, and it was a much better experience than the times I went solo. Much more creative brainstorming happened. We were forced to use the theme **Companion**, and we decided on using clones and a ~~companion cube~~ friend cube to fit the theme in a puzzle platformer. 

## Implementation

We used Godot and for the puzzling mechanics we coded up some area2D sensors as buttons, some RigidBody2D spheres as our friend cube, and a KinematicBody2D as our slime main character. 

Our first real problem was that our cube failed to stay within the walls of the game, which is particually bad for a puzzle platformer where you would need the cube to activate things later. Our player was capable of pushing the cube as though the walls were not there, which isn't good. We found a setting in the move-and-slide function to turn off infinite inertia, which solved the problem, but made it so that the player couldn't push the cube.

One of my teammates found a tutorial online on how to make the player push the cube by coding the forces to be applied by hand.

## Play testing

Play testing is super important, you have no idea if you are heading in the right direction with the changes you are making unless you play the game frequently. Because we were playtesting along the way, we noticed that our cube wasn't fun to interact with and would frequently get stuck to walls. I wasn't particually looking for a solution for this, but I was playing around with the physics material for the cube. I added bounciness to the cube, and suddenly you could push the cube out of a corner by making it bounce out, very cool, plus it was more fun to interact with so... double win there.

Originally our cube was square shaped, which was great, but this would make our cube get caught on corners and push the player in weird ways. We switched it out to be a sphere and added a square image on top and added some code to remove the image's ability to rotate with the ball cube. This created an illusion that the cube was still a cube, without having the extra clunkiness.

## Play the Games:

Here's a link to the game my team made in 48 hours:
[You Are Not A Clone](https://sire-inc.itch.io/you-are-not-a-clone)

And here's the links to the games other teams made:
[Game Jam](https://itch.io/jam/wgdc-spring-game-jam/entries)

If you want to participate in a game jam yourself, there's always game jams happening, and I encourage pretty much anyone interested to at least try it once. Here's a list of featured game jams coming up soon: [Itch Featured Jams](https://itch.io/jams/upcoming/sort-date/featured).