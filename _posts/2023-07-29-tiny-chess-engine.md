---
title: A Tiny Chess Engine
description: A Delightfully Strong Nemises
layout: post
category: blog
tags: project chess coding dev
---

I'm planning on participating in [SebLague's](https://www.youtube.com/@SebastianLague) [Chess-Challenge (C#)](https://github.com/SebLague/Chess-Challenge)

I've been writing a chess engine for this challenge for the past few days, and I'm pretty happy with what I've been able to do.

![Video Proof](/assets/gifs/chess-engine.gif)

What I'm doing:

I've written a recursive min-max algorithm including alpha-beta pruning and board value caching.

I search all possible moves, ignoring moves that opponents/I will never take. Anytime I calculate a board value, I store that value for future use.

I'm using Sebastian Lague's Board C# object to grab bitboards of the current position for each type of piece and color. I use this information to quickly evaluate the board state and get a "value" which we can look for with our min-max search.

I also have some code that mitigates losses from time-outs. Ideally, we wouldn't run out of time, but if we start to run low, I start to make my chess bot make very quick judgements only about 2 layers deep.

There was a bug that I had with the caching where 3-fold repetitions became super common because I was using cached values of board states. When I returned: to a previous position in the search, it would show the old non-draw state instead of the new one, causing my algorithm to think that it could move there without a draw, which would cause a sad sudden drop in advantage, costing some games.

I should probably mention that there are very fast ways for counting 256 bit longs, which I am using. It's from a stack overflow post I've lost track of, can't seem to find it, but it mentioned hamming weights and fast ways to calculate them. [More Info About Hamming Weights](https://en.wikipedia.org/wiki/Hamming_weight). This greatly reduces the number of steps in some of the most performance critical sections of my code.

If you want to take a look at my code: [MyBot.cs](https://gitlab.com/cameron.dugan/chess-challenge/-/blob/main/Chess-Challenge/src/My%20Bot/MyBot.cs?ref_type=heads)

Have a great rest of your day, thanks for being curious.
