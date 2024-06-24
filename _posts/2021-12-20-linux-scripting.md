---
title: Linux Scripting
description: Removing Repetitive Tasks
permalink: /blog/bash/
layout: post
tags: code linux commandline
---

Needed something to post, so here's some tips to make life on the command line a breeze.

If you use linux, odds are you are either using bash or zsh. In your home folder, bash has a file called .bashrc and zsh has a file called .zshrc. Adding aliases to these files is a great way to make simple shortcuts for long and complicated commands. Here are some examples:

```
#Git
alias add='git add'
alias commit='git commit'
alias push='git push'
alias pull='git pull'
alias status='git status'
alias log='git log'
alias clone='git clone'
```

Aliases can replace anything you would type into your terminal:

```
#Backups
alias bak='timeshift --check >> ~/Logs/timeshift.log'
alias restore='timeshift --restore'
#Scripts
alias longscript='bash ~/Scripts/LongScript.sh'
```

Anything you type into the terminal can be turned into a bash script by typing each command line by line into a text file and saving it as a .sh file. All you need to do to run the file is run `bash scriptName.sh`

Aliases are great, but automatically running scripts don't have to be typed on a terminal at all. This can be done with cron, a simple service that can run scripts at specific times, at reboot or login, and every x number of hours/days/minutes.

Install a package from your package manager called cronie or cron. If you can't find one of those, look up what your distribution uses, and install that. Next is to make cron run at startup through systemd. The command is `systemctl enable --now cronie` (or crond).

Now that crond is setup, running `crontab -e` will open a text editor that will allow you to add scripts that run automatically.
