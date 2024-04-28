---
title: Baking Configs
description: I can't stop changing my configs (help me)
layout: post
permalink: /blog/config-habit/
tags: coding dev config habit
---

## Cooking System Configs
Here's how my day goes. I sit down at my computer, and if I'm not working I'm
dragged back into config land. I've got years of experience messing around with
configurations at this point, and I want to share how not to do things.

![A cyberpunk guy at a computer](/assets/images/cool-graphics/config-habit2.jpg)

## Burnt

Nothing beats the rush of changing files that your computer needs to work. Grub
and fstab(file system tab) are some of the files I would touch on a weekly
basis to try to make my computer run the way I want it to run. Some of you
might already see what goes wrong: Computer works fine, then I reboot, and now
the bios can't find the OS anymore. Best of all, I didn't keep any kind of
backup ;). This was frustrating at the time, I have since learned
how to avoid this kind of issue. (It's backups and always will be)

## Toasted

After a year or so of changing files manually in nano, I grow up a little and
start to backup the files I change before rebooting so in the worst case
scenario, I could boot up an install USB, gain access to the os and swap out
the problem file with it's backup. This experience is terrible compared to
my current solution.

## Edible

After some more months of editing configs, I'm realizing I can use other
text editors than nano, get some syntax highlighting for configs that use
standards like, json and yaml. Or for files that made their own standards like
dockerfile but are also popular enough to get IDE support. If you are editing
your system critical files manually. I recommend using your favorite IDE you
use for other coding tasks and sudo cp file_system_uses file_system_uses.bak,
then sudo cp file_you_edit file_system_uses.

![Another cyberpunk guy at a computer](/assets/images/cool-graphics/config-habit1.jpg)

## Tasty

As some people might have realized by now, what if I forget to make a .bak?
Some more time passes and I also started using distros with backups selectable
at boot. This makes me far less anxious about changing most configs. Still
worried when changing settings in grub/Systemd-boot. Now what if I told you
that making .baks isn't the best idea ever? And what if I told you that you can
use git as a backup?

## Delicious

There are special kinds of git repos that you can use for managing files in
different folders. I don't use those, I write a bash script that
copy the files from my git repo into the right spots on my system.

I also started using [NixOS](https://nixos.org/), which is perfect for making
sure my configurations do what I expect. My workflow is more about editing my
one [NixOS](https://nixos.org/) repo to configure my configs. It's nifty when
editing configs that are more complex than helpful because [NixOS](https://nixos.org)
has a lot of great defaults you can toggle.
