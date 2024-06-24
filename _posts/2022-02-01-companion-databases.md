---
title: Companion Databases
description: Hyper Personalized Databases for Everyday People.
layout: post
permalink: /blog/companion-databases/
tags: dev idea thinking
---

### Background Info
I've been watching youtube programmers for a while now, and recently I was watching a [Kalle Hallden](https://www.youtube.com/c/KalleHallden) youtube video.

He mentions an idea I've traced back to originating from Derek Sivers(although I'm sure he's not the only one to think of this).

I found Derek Sivers on the [Tim Ferris Podcast](https://tim.blog/podcast/) on episodes: 137, 439, and 370.5.

The grand idea boils down to writing a personal database custom to your exact situation. I've nicknamed this: the companion database.

### The Concept

This database will hold all the information you would ever want to log such as: daily exercise, your children's dumb sayings, future/current assignments/projects and their status, favorite things over time, important quotes, etc.

Lets say I want to record all of the articles I read. I would create a new data type called 'article' with the fields: title, date read(optional: defaults to current day), date published(optional), description(optional).

Then later, if I realize that I also want to create a detailed review of an article, I have a few options. I can either add optional review and rating fields, or I can create a new data type called 'reviews' that must have a reference to an existing data entry, and the fields mentioned earlier.

If you wanted, you could even use it as a doomsday mechanism, where after 12 months of non-use it could presume you to be dead, send a confirmation email to your address, after ~1 or 2 weeks it will either release the whole database or just sections to the public.

I think that such a database would be great. Alternatives like spreadsheets are a bad fit for this and often proprietary.

### The Implementation

Traditionally something like this could only be done by software enthusiasts. A low-tech solution would be to write everything down in a notebook physically or digitally. This works, but lacks any automation, enforced structure, or automatically derived data.

The solution I propose is to write a multi-platform software gui to a plaintext-based database with support for all the basic database things. Creating data types and required/optional relationships, but all under a super easy to understand interface that boils the concepts down into it's most simple and easily understood terminology.

All of the information has to be stored in plain-text, because I want this to last and work without the software, allowing it to work on any device with a text editor.

Bonus: the software could graph anything from the database such as activity over time, events with dates and their duration, stat for data-type over time, etc.

Ideally the system would work great with folder syncing software like SyncThing or rsync.

### Final Thoughts

I know I'm probably over-hyping the system, but I think it's relatively novel and incredibly flexible. (just realized you could keep track of things in fridge and set an expire date etc). If plain-text companion databases don't already exist, I want to make this happen.

If they do exist in a similar way to what I'm describing, please contact me, I'd love to know.

