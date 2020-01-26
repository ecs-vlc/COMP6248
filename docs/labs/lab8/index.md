---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2019-20"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
rdir: '../../'
---

# Lab 8 - Autoencoders and generative modelling

_[Kate Farrahi, 29th April 2019](https://github.com/ecs-vlc/COMP6248)_

## Change History

- 20190429: Initial version
- 20200126: Minor updates for the 1920 AY

## Introduction 
In this lab you'll explore Auto-Encoder architectures.

Through this lab you'll learn how to:

* How to build a simple auto-encoder
* How to build robustness by training a denoising auto-encoder
* How to build a variational auto-encoder


## Getting started 
To work through this lab you'll use the Python 3 language in a Jupyter Notebook environment, with the `pytorch` tensor library, the `torchvision` utility library and the `torchbearer` model training library. We'll also use the `matplotlib`, `scikit-learn` and `numpy` packages. We will primarily be using [Google Colab](http://colab.research.google.com/) to run the notebooks as this gives you access to an environment with all the tools required. If you wish to run the notebooks locally, see the information in the section below.

The following is a list of the notebooks for this lab, with links to open directly in Google Colab (once opened you should immediately save a copy in your Google Drive otherwise anything you do will be lost once the browser closes), or to download locally. You should work through the notebooks in numeric order as they follow on from each other. 

8.1 Auto-Encoder | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab8/8_1_Autoencoder.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab8/8_1_Autoencoder.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab8/8_1_Autoencoder.ipynb)
8.2 Denoising AE | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab8/8_2_Denoising_Autoencoder.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab8/8_2_Denoising_Autoencoder.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab8/8_2_Denoising_Autoencoder.ipynb)
8.3 VAE | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab8/8_3_VAE.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab8/8_3_VAE.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab8/8_3_VAE.ipynb)


## Prerequisites for running on your own machines
You'll need access to a computer with the following installed:

- `Python` (>= 3.6)
- `notebook` (>=5.4.1)
- `pytorch` (>= 0.4)
- `torchvision` (>=0.2.1)
- `torchbearer` (>= 0.2.6)
- `NumPy` (>= 1.12.1)
- `SciPy` (>= 1.0.1)
- `scikit-learn` (>= 0.19.1)
- `matplotlib` (>= 2.2.2)
- `spacy` (>= 2.0.18)
- `torchtext` (>= 0.3.1)

If you want to work on your own machine we recommend using the Anaconda python distribution. Running `conda install pytorch torchvision -c pytorch` (see https://pytorch.org/get-started/locally/ for more options) will install both pytorch and torchvision. Torchbearer can be installed with `pip install torchbearer`. This lab can be run without hardware acceleration, but it will be slow!