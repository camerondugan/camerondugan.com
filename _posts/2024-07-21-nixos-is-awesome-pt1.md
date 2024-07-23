---
title: Why NixOS is Awesome!
description: When did computing become scary? NixOS is here to the rescue!
layout: post
category: blog
tags: coding linux nixos
---

Do you ever remember finally getting something to work, and then deciding that you wouldn't touch the computer ever again in fear that it might randomly stop working? What if this was problem went from a fear of the machine down to a single file? What if you didn't have to be afraid ever again?

I like NixOS deeply. It's like Arch, in that you get to put everything together, but it has this guarantee of stability that Arch can only provide when the user has gained divine insight into system maintenance and omniscience of news in the Arch updates email group.

What makes me so proud to be a NixOS user is that I know that my computer will essentially never give me a [BSOD](https://en.wikipedia.org/wiki/Blue_screen_of_death). Here's how that works: To make changes to my computer I need to modify my configuration.nix file. Then run a command:

{% highlight bash %}
sudo nixos-rebuild boot
{% endhighlight %}

Which will switch everything over to the new changes next time I reboot. Now this is where an Arch user might be worried: "What if my computer doesn't work when I turn it on? What if I can't get to a TTY?". No need to fear: NixOS makes snapshots of your previous configurations. This means that you can always roll back your changes to the last working version.

{% highlight bash %}
sudo nixos-rebuild switch
{% endhighlight %}

Here's another even better feature. I basically never have to reboot my computer. And, I don't need to be a Linux wizard to do it. Every service my computer is using gets updated, while software I'm currently running stays the same until I launch it again. I can keep running in a half-updated state, meaning I can still get my stuff done while getting all of those juicy new software features. For example: If you have a Systemd service running that handles your printing, it will get updated. If you are using Firefox, it stays on the older version until you close and re-open it.

Another amazing feature that NixOS gives its users: You can switch [desktop environments](https://en.wikipedia.org/wiki/Desktop_environment#Gallery) easily without all of these residual programs being left behind or weird issues that normally pop up when you install them on other Linux distributions. For a while I used Gnome, then Hyprland, then KDE. I had no issues with any of these! This is what people change distributions for, and it's all up to date here on NixOS.

Are you are thinking about switching but aren't sure if your software will come with you? Here's a [search engine for packages](https://search.nixos.org/packages) and [search services](https://search.nixos.org/options?). I didn't even mention the best part: Services! Want to run your own [mastodon](https://mastodon.social/explore) instance? That's a service! [Syncthing](https://syncthing.net)? Service! [Forgejo](https://forgejo.org/)? Service! Before turning to docker or VM's try looking to see if NixOS has a service.

All you need for a service to run on NixOS is:

{% highlight nix %}
service.{your service name here}.enable = true;
{% endhighlight %}

NixOS or something close to it will give make using software reliable again.

If you thought this was interesting, there is going to be a part 2!

If you made it this far and you haven't given NixOS a shot, maybe try installing it next time you switch your OS!

I promise it can be worth it :)
