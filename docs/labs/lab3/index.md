---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2018-19"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
rdir: '../../'
---

# COMP6248 Differentiable Programming/Deep Learning: Lab 3 - Implementing simple Neural Networks using PyTorch and Torchbearer

_[Jonathon Hare, 9th Oct 2018](https://github.com/ecs-vlc/COMP6248)_

## Change History

- 20181009: Initial version

## Acknowledgements
This lab started out its life as a Keras practical developed for the VLC group based on Jason Brownlee's ["Handwritten Digit Recognition using Convolutional Neural Networks in Python with Keras"](http://machinelearningmastery.com/handwritten-digit-recognition-using-convolutional-neural-networks-python-keras/) tutorial. It subsequently evolved as it was used in tutorials run for external organisations including Ordnance Survey, Lloyds Register and DISCNet. 

This version is refocussed on using PyTorch with Torchbearer. A number of changes have been made to ensure that it better fits our format and I've also added additional information and exercises throughout. 

## Introduction 
A popular demonstration of the capability of deep learning techniques is object recognition in image data. The "hello world" of object recognition for machine learning and deep learning is the MNIST dataset for handwritten digit recognition.

In this lab you will discover how to develop a simple neural network model to achieve good performance on the MNIST handwritten digit recognition task in Python using the PyTorch deep learning library.

Through this lab you'll learn how to:

* How to load the MNIST dataset in PyTorch.
* How to develop and evaluate a baseline neural network model for the MNIST problem.
* How to run your code on the GPU.
* How to use Torchbearer to simplify training of your models.

## Getting started 
To work through this lab you'll use the Python 3 language in a Jupyter Notebook environment, with the `pytorch` deep learning library, the `torchvision` utility library and the `torchbearer`model training library. We'll also use the `matplotlib`, `scikit-learn` and `numpy` packages.

## Prerequisites for running on your own machines
You'll need access to a computer with the following installed:

- `Python` (>= 3.6)
- `notebook` (>=5.4.1)
- `pytorch` (>= 0.4)
- `torchvision` (>=0.2.1)
- `torchbearer` (>= 0.2.3)
- `NumPy` (>= 1.12.1)
- `SciPy` (>= 1.0.1)
- `scikit-learn` (>= 0.19.1)
- `matplotlib` (>= 2.2.2)

If you want to work on your own machine we recommend using the Anaconda python distribution. Running `conda install pytorch torchvision -c pytorch` (see https://pytorch.org/get-started/locally/ for more options) will install both pytorch and torchvision. Torchbearer can be installed with `pip install torchbearer`. With the exception of the part of the tutorial that looks at enabling hardware acceleration, the entire lab can be performed on the CPU - some bits of training could take up to a couple of minutes however.