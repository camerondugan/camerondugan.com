---
title: Using AI for learning to code better
description: More updates on my neovim journey
layout: post
permalink: /blog/neovim-update1/
tags: coding dev vim
---

## Background

I don't like using LLM's like chatGPT or copilot to complete my code for me. I
want to remember the code, and letting something else type for me doesn't help
me with that. My goal is to be able to write code without looking up any
syntax. Wasting my time and others looking for programming I've done before. I
want to get better at coding. I want to use an LLM to guide my programming when
I get lost, or if my code structure starts to turn into spaghetti.

## What I need changed

I'm not a fan of running something as fluid and conversational as an LLM on
anything else except my own hardware. Over the internet is creepy, and I don't
trust that they won't leak the information they collect on purpose or on
accident.

I also can't have it telling me all the answers before I get the chance to
think about it first. I need to be in control. There can't be anything
automatically popping up on my screen. I want something that can give me
simple help when I need it. Advice like, needs more comments, or could use an
extra interface. I want a real "copilot", an artificial pair programmer.

## The solution

I'm using ollama to download and run LLMs from the internet. Once it's on my
computer, it runs locally and doesn't need an internet connection. Then, I set
up the ollama nvim plugin, which allows me to call any of the installed LLMs to
ask it questions. I've disabled code generation, suggestion and replacement
features on the LLM, so I would never turn off my brain. Now all I need to do
in Neovim is to select the code I have a question about, and ask it. I've
created some shortcuts that will get me to commonly asked questions such as:
How can I simplify this code?, How can I make this code more readable and
explain how it would be, What design patterns would work best with this code
and why?.

## Why you should want this system

To reiterate, this is something that takes your code writing ability and gives
it the best opportunity to improve. No more waiting for others to be free to
give advice. No more strange answers from strangers on the internet. The LLM
will once in a while spit out answers that are unhelpful, but most times, the
advice it can give is good on larger LLMs.

## Why you shouldn't want this system

You might already have great mentors, who will look at your code frequently and
give great advice on what kind of changes you can make to make your code
better. Technology might be too tempting, there might not be a good way for you
to use the AI and the AI ends up using you, while you learn nothing waiting for
the next code generation to complete.

## Conclusion

It's OK if you disagree with what I've written here. The goal is to have you
think about your use of technology and to have you double-check that your use
is beneficial or if it's more out of habit, or it could be the easy way out. My
hope is that you keep on thinking, and that your machines keep doing the menial
work. As for me, I think I'll stay behind the wheel of my own destiny.
