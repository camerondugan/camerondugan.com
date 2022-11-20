---
title: Programming A Game AI
description: It's kinda hard, but it's possible to do alone
layout: post
permalink: /blog/draft/
tags: project dev ai game
---

I really like programming things that can improve as it runs, but programming a self improving program can be a nightmare because the feedback loop grows bigger the more you code.

The more you need the code to self improve, the longer it seems to take. Self improving code should be saved only for problems where you can't reasonably code a complete solution. Solving games is complicated, tic tac toe being relatively easy to solve, chess being orders of magnitude harder. Each new potential move makes the searching of potential moves exponentially more difficult. 

![chess board game played by alphazero](/assets/images/games/chess/alphazero.png)

"AI" code can help in these scenarios to help trim down the potential moves the code looks at to find great moves. The way this works is you have a neural network that looks at a single game state and have it predict the winner. Loop over all potential moves and pick the move that the neural net likes the best and repeat until the game ends. For training, this doesn't work because the AI will have tendencies for picking the same series of moves over and over. 

The solution is to pick moves based on how unlikely they are and how good they seem. The more a path is taken, force the AI to further avoid that path during training. This should allow a wider search of the game space. 

![Neural Network Example](/assets/images/code visualization/AI/neuralnet.jpg)

Now, another trick game AI programers can do is to split the training and the exploring into separate processes. The code can store games played into a large list and have half of the computer spend it's resources updating that list with new games and the other half updating the neural net to better judge the outcomes of those games.

The code I wrote in rust works without that final trick, it just runs one at a time, but it does keep a list of games played so how often explores vs trains it's vision is easy to change. I also use the neat algorithm, which is not ideal because it simply is a trial and error style approach instead of an advanced calculus based learning model.

Feel free to checkout the [chess AI trainer](https://gitlab.com/cameron.dugan/neat_zero_rust) which I wrote in rust based on some of the fundamentals found in an alpha go zero cheat sheet I found on the internet somewhere.

Hope you learned something or had fun! I know I did one of those...