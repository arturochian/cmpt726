---
title       : Machine Learning Project Proposal
subtitle    : 
author      : Tong He, Li Xiong
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Machine Learning Project Proposal

Our purpose is to build a model to play a game, and it should figure out how to improve itself only based on the rules of the game.

There are some points to consider:

1. We can feed a status of game into the model, it will return the strategy
2. It must be possible to improve the model, not hard-coded searching algorithm
3. It can either learn from existing records of games, or from the games it automatically generates.

----

## Machine Learning Project Proposal

Further thoughts:

1. The model could be a machine learning model that accept the status of game as input and return the evaluation score of this status, then we can choose the one with the highest score
2. Gradient descent method is natural to the update of model.
3. Learn from existing games is faster, but the pitfall is also obvious: data collection is difficult.

---

## Temporal Difference Learning

Temporal Difference Learning is a learning algorithm from reinforcement learning.

It is proposed in late 1980s, and Gerald Tesauro used it to train a very successful neural network: TD Gammon.

The update of parameters follows:

$$w_{t+1}-w_{t} = \alpha(Y_{t+1}-Y{t})\sum_{k=1}^t \lambda^{t-k}\nabla_w Y_k$$

----

## TD Gammon

In the formula:

$$w_{t+1}-w_{t} = \alpha(Y_{t+1}-Y{t})\sum_{k=1}^t \lambda^{t-k}\nabla_w Y_k$$

1. $\alpha$ is the learning rate
2. $w$ is the parameter vector
3. $\nabla_w Y_k$ is the gradient of network output with respect to weights
4. $\lambda$ is a heuristic parameter controlling the temporal credit assignment of how an error detected at a given time step feeds back to correct previous estimates.
5. In the end of each game, $z$ will indicate the result of the game, and then use $z-Y_{t}$ instead of $Y_{t+1}-Y{t}$

-----

## TD Gammon

It's features:

1. Learning from the games it played with itself.
2. There's no hard-coded artificial rules in the model, nor existing games by human players.
3. In the end it will reach a relatively strong level.

----

## TD Gammon

Why backgammon?

1. Linear board, no need to learn the neighbourhood relationship from a two dimensional board.
2. Simple rules, easy to implement.
3. Existing excellent human players and AIs can be used as comparison.




