---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2018-19"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
rdir: '../../'
---

# Lab 3 - Optimisation

_[Kate Farrahi, 7th Jan 2018](https://github.com/ecs-vlc/COMP6248)_

## Change History

- 20190107: Initial version

## Introduction 

Learning how to optimise the learning algorithm is very important, particularly when working with large amounts of data and models with many parameters to learn. We have covered a few optimisation algorithms in the lecture, which can be used to improve standard gradient descent and stochastic gradient descent. Momentum is used to add the exponentially weighted average of the gradient of the cost function obtained using backpropagation, which almost always improves the performance of learning. We also covered the Adam algorithm, which used a combination of both RMSProp and Momentum to optimise learning.

Through this lab you'll learn how to:

* Implement gradient descent and plot how the parameters change over iterations of the algorithm; 
* Implement stochastic gradient descent and add momentum to the implementation; 
* Implement ADAM; 

## Getting started 
To work through this lab you'll use the Python 3 language in a Jupyter Notebook environment, with the `pytorch` tensor library. We will primarily be using [Google Colab](http://colab.research.google.com/) to run the notebooks as this gives you access to an environment with all the tools required. If you wish to run the notebooks locally, see the information in the section below.

You will likely need to refer to the "optimisation" lecture slides for this lab - you can get those here: [http://comp6248.ecs.soton.ac.uk/lectures/optimisation.pdf](http://comp6248.ecs.soton.ac.uk/lectures/optimisation.pdf).

The following is a list of the notebooks for this lab, with links to open directly in Google Colab (once opened you should immediately save a copy in your Google Drive otherwise anything you do will be lost once the browser closes), or to download locally. You should work through the notebooks in numeric order as they follow on from each other. 


3.1 Gradient Descent | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab3/3_1_gradient_descent.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab3/3_1_gradient_descent.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab3/3_1_gradient_descent.ipynb)
3.2 SGD, Momentum, and Adam | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab3/3_2_sgd_momentum_adam.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab3/3_2_sgd_momentum_adam.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab3/3_2_sgd_momentum_adam.ipynb)


__Important:__ At the end of the lab you must save your notebooks and associated files to a safe location. At the end of this lab you will be required to submit them (together with the notebooks for labs 1 and 2) to handin: [https://handin.ecs.soton.ac.uk/handin/1819/COMP6248/1/](https://handin.ecs.soton.ac.uk/handin/1819/COMP6248/1/). You must use the exact Jupyter notebooks we provide as they contain metadata which is used for assessing the exercises within them.

## Prerequisites for running on your own machines
You'll need access to a computer with the following installed:

- `Python` (>= 3.6)
- `notebook` (>=5.4.1)
- `pytorch` (>= 1.0.0)

If you want to work on your own machine we recommend using the Anaconda python distribution. Running `conda install pytorch torchvision -c pytorch` (see https://pytorch.org/get-started/locally/ for more options) will install both pytorch and torchvision (used in later labs). 
