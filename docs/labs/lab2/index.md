---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2018-19"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
rdir: '../../'
---

# Lab 2 - Automatic Differentiation

_[Jonathon Hare, 2nd Nov 2018](https://github.com/ecs-vlc/COMP6248)_

## Change History

- 20181102: Initial version

## Acknowledgements

This lab is derived from material that I produced for a training session on Automatic Differentiation for VLC students and staff in the late Spring of 2018. A lot of inspiration for the content came from this [excellent blog post on Reverse Mode AD](https://rufflewind.com/2016-12-30/reverse-mode-automatic-differentiation).

## Introduction 

Automatic Differentiation (AD) the key to writing and optimising complex differentiable programs. With AD we no do not have to rely on hand-computing or automatically computing analytic solutions to gradients, nor do we have to rely on, potentially highly inaccurate, numerical gradient estimates. 

Surprisingly, Automatic Differentiation is actually not that hard to implement. In this lab we'll start by hand-coding simple forward and reverse mode AD systems in Python so we can get a feeling for how they work, before moving on to looking at how AD works in PyTorch.

Through this lab you'll learn how to:

* Implement a toy forward-mode AD system; 
* Implement a toy reverse-mode AD system; 
* Use PyTorch's built in AD system to evaluate the gradients of complex programs; and
* Differentiate random variables drawn from distributions with respect to the distributions' parameters using the _reparameterisation trick_.

## Getting started 

To work through this lab you'll use the Python 3 language in a Jupyter Notebook environment, with the `pytorch` tensor library. We will primarily be using [Google Colab](http://colab.research.google.com/) to run the notebooks as this gives you access to an environment with all the tools required. If you wish to run the notebooks locally, see the information in the section below.

You will likely need to refer to the "autograd" lecture slides for this lab - you can get those here: [http://comp6248.ecs.soton.ac.uk/lectures/autograd.pdf](http://comp6248.ecs.soton.ac.uk/lectures/autograd.pdf).

The following is a list of the notebooks for this lab, with links to open directly in Google Colab (once opened you should immediately save a copy in your Google Drive otherwise anything you do will be lost once the browser closes), or to download locally. You should work through the notebooks in numeric order as they follow on from each other. 


2.1 Forward Mode Automatic Differentiation | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab2/2_1_ForwardAD.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab2/2_1_ForwardAD.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab2/2_1_ForwardAD.ipynb)
2.2 Reverse Mode Automatic Differentiation | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab2/2_2_ReverseAD.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab2/2_2_ReverseAD.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab2/2_2_ReverseAD.ipynb)
2.3 Automatic Differentiation in PyTorch | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab2/2_3_PyTorchAD.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab2/2_3_PyTorchAD.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab2/2_3_PyTorchAD.ipynb)


__Important:__ At the end of the lab you must save your notebooks and associated files to a safe location. At the end of the third lab you will be required to submit them (together with the notebooks for labs 2 and 3) to handin: [https://handin.ecs.soton.ac.uk/handin/1819/COMP6248/1/](https://handin.ecs.soton.ac.uk/handin/1819/COMP6248/1/). You must use the exact Jupyter notebooks we provide as they contain metadata which is used for assessing the exercises within them.

## Prerequisites for running on your own machines

You'll need access to a computer with the following installed:

- `Python` (>= 3.6)
- `notebook` (>=5.4.1)
- `pytorch` (>= 1.0.0)

If you want to work on your own machine we recommend using the Anaconda python distribution. Running `conda install pytorch torchvision -c pytorch` (see https://pytorch.org/get-started/locally/ for more options) will install both pytorch and torchvision (used in later labs). 
