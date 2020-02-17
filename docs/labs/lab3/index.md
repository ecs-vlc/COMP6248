---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2018-19"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
rdir: '../../'
---

# Lab 3 - Optimisation

_[Jonathon Hare & Ethan Harris, 17th Feb 2020](https://github.com/ecs-vlc/COMP6248)_

## Change History

- 20200217: Initial version

## Acknowledgements

## Introduction 

Learning how to optimise the learning algorithm is very important, particularly when working with large amounts of data and models with many parameters to learn. We have covered a few optimisation algorithms in the lecture, which can be used to improve standard gradient descent and stochastic gradient descent. Momentum is used to add the exponentially weighted average of the gradient of the cost function obtained using backpropagation, which almost always improves the performance of learning. We also looked briefly at the Adam algorithm, which used a combination of both RMSProp and Momentum to optimise learning.

Through this lab you'll learn how to:

* Implement code to find the minima of analytic functions using PyTorch's built in optimisers; 
* Implement mini-batch stochastic gradient descent with a range of optimisers and learning rate schedulers; 
* Implement a Soft-margin Linear Support Vector Machine; and, 
* Use weight decay to reduce overfitting.

## Getting started 
To work through this lab you'll use the Python 3 language in a Jupyter Notebook environment, with the `pytorch` tensor library. We will primarily be using [Google Colab](http://colab.research.google.com/) to run the notebooks as this gives you access to an environment with all the tools required. If you wish to run the notebooks locally, see the information in the section below.

You might need to refer to the "optimisation" lecture slides for this lab - you can get those here: [http://comp6248.ecs.soton.ac.uk/lectures/optimisation.pdf](http://comp6248.ecs.soton.ac.uk/lectures/optimisation.pdf).

The following is a list of the notebooks for this lab, with links to open directly in Google Colab (once opened you should immediately save a copy in your Google Drive otherwise anything you do will be lost once the browser closes), or to download locally. You should work through the notebooks in numeric order as they follow on from each other. 


3.1 Function Optimisation | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab3/3_1_FunctionOptimisation.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab3/3_1_FunctionOptimisation.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab3/3_1_FunctionOptimisation.ipynb)
3.2 Support Vector Machines | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab3/3_2_SVM.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab3/3_2_SVM.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab3/3_2_SVM.ipynb)


## Prerequisites for running on your own machines
You'll need access to a computer with the following installed:

- `Python` (>= 3.6)
- `notebook` (>=5.4.1)
- `pytorch` (>= 1.0.0)

If you want to work on your own machine we recommend using the Anaconda python distribution. Running `conda install pytorch torchvision -c pytorch` (see https://pytorch.org/get-started/locally/ for more options) will install both pytorch and torchvision (used in later labs). 
