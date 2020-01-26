---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2019-20"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
rdir: '../../'
---

# Lab 1 - Introducing PyTorch

_[Jonathon Hare, 19th Dec 2018](https://github.com/ecs-vlc/COMP6248)_

## Change History

- 20181219: Initial version
- 20200126: Minor updates for the 1920 AY

## Acknowledgements

This lab is heavily inspired by Stanford's 'Unsupervised Feature Learning and Deep Learning' tutorial (originally written by Andrew Ng and team), and Andrei Karpathy's cs213n course (also from Stanford). The bottom-up approach taken by these courses provides a sound grounding in understanding the fundamentals that make differentiable programming and deep learning possible. 

## Introduction 

The practical aspect of our COMP6248 module is going to require you to implement and train deep neural networks and other forms of differentiable programs. Modern deep learning often works with massive datasets and complex models. Hardware acceleration is key to how we're able to train our models in a timely manner, and it could be argued that advances in GPU hardware was the key driving force that allowed Alex Krizhevsky to implement AlexNet, train it on ImageNet, smash the ILSVRC 2012 competition and kick-start the deep-learning revolution.

Writing code that efficiently takes advantage of the many cores of a GPU or Tensor processor is really hard. Fortunately others have already done much of that hard work for you and produced a range of programming libraries that enable you to easily perform the algebraic operations required for deep learning on many-core hardware. 

There are a number of deep learning libraries that you've undoubtedly heard of, and perhaps even used: [Tensorflow](http://tensorflow.org), [Keras](http://keras.org), [MXNet](https://mxnet.incubator.apache.org), [DL4J](https://deeplearning4j.org), [Torch](http://torch.ch), [Caffe](https://caffe2.ai), [PyTorch](http://pytorch.org), [Chainer](https://chainer.org), ...
All of these libraries have advantages and disadvantages relative to each other. At the time of writing, of those listed, only PyTorch and Chainer have 'dynamic computation graphs' which is a prerequisite for proper differentiable programming (Tensorflow has a new extension called 'fold', but this doesn't really offer true dynamic graphs). For the COMP6248 module we're choosing to use PyTorch as the base library --- it's fast, dynamic, flexible, easy to follow, and most importantly it's what a large proportion of the research community use (including our PhD students!).

Previously, in the _Foundations of Machine Learning_ module, you learnt a number of techniques for optimisation and machine learning. This lab will remind you of some of those machine learning models (linear regression, logistic regression and softmax classification), using the PyTorch library to build practical low-level implementations. We'll also look at how the parameters of these models can be learned using gradient methods (and directly using tools such as the Moore-Penrose pseudoinverse in the case of linear regression).

At this point we're going to stay away from the deep-learning library, and just focus on fundamental Tensor manipulation and linear algebra operations. In next week's lab we're going to look at the topic of Automatic Differentiation which is key to writing differentiable programs. In the third lab we'll explore PyTorch's support for constructing and optimising deep networks. By teaching you the library from the ground-up you'll be equipped with the knowledge needed to implement many of the interesting and complex models that are of interest to researchers in the field.

Through this lab you'll learn how to:

* Create and manipulate PyTorch tensors, and perform algebraic operations on them;
* Implement a linear regression model using the pseudoinverse;
* Optimise the parameters of a linear regressor using gradient descent;
* Implement logistic regression; and
* Implement softmax regression.

## Getting started 

To work through this lab you'll use the Python 3 language in a Jupyter Notebook environment, with the `pytorch` tensor library and `matplotlib` package to draw graphs. We will primarily be using [Google Colab](http://colab.research.google.com/) to run the notebooks as this gives you access to an environment with all the tools required. If you wish to run the notebooks locally, see the information in the section below.

The following is a list of the notebooks for this lab, with links to open directly in Google Colab (once opened you should immediately save a copy in your Google Drive otherwise anything you do will be lost once the browser closes), or to download locally. You should work through the notebooks in numeric order as they follow on from each other. 


1.1 Linear Regression | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab1/1_1_linear_regression.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab1/1_1_linear_regression.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab1/1_1_linear_regression.ipynb)
1.2 Logistic Regression | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab1/1_2_logistic_regression.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab1/1_2_logistic_regression.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab1/1_2_logistic_regression.ipynb)
1.3 Softmax Regression | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab1/1_3_softmax_regression.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab1/1_3_softmax_regression.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab1/1_3_softmax_regression.ipynb)

## Prerequisites for running on your own machines

If you wish to run locally, you'll need access to a computer with the following installed:

- `Python` (>= 3.6)
- `notebook` (>=5.4.1)
- `pytorch` (>= 1.0.0)
- `matplotlib` (>= 2.2.2)

If you want to work on your own machine we recommend using the Anaconda python distribution. Running `conda install pytorch torchvision -c pytorch` (see [https://pytorch.org/get-started/locally/](https://pytorch.org/get-started/locally/) for more options) will install both pytorch and torchvision (used in later labs). 
