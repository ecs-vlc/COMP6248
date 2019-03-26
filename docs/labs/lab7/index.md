---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2018-19"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
rdir: '../../'
---

# Lab 7 - Recurrent Networks, Sequence Prediction and Embeddings

_[Jonathon Hare, 3rd March 2019](https://github.com/ecs-vlc/COMP6248)_

## Change History

- 20190303: Initial version

## Acknowledgements
This lab started out its life as a Keras practical developed for Lloyds Register and DISCNet. The LSTM-based Nietzsche generator described in the first part of the lab is inspired by the Keras examples. The remaining parts of the lab are based around [Ben Trevett's](https://github.com/bentrevett/pytorch-sentiment-analysis) excellent PyTorch & TorchText tutorial ([MIT License](https://github.com/bentrevett/pytorch-sentiment-analysis/blob/master/LICENSE)). 

This version is refocussed on using PyTorch with Torchbearer. A number of changes have been made to ensure that it better fits our format and I've also added additional information and exercises throughout. 

## Introduction 
In this lab we'll use PyTorch to model and analyse sequence data using recurrent neural networks made from computational blocks called a "Long Short Term Memory", or LSTM. In the first part of the tutorial we'll explore how we can predict language - given a starting character, can we predict what will come next? We'll start by implementing a simple "1st-order Markov Chain" to learn the transisition probabilities between characters, and we'll then compare this to a model that can learn longer-term dependencies using a recurrent neural network.

The second part will look at word embeddings, and we'll explore what kinds of things one can do with pre-trained embeddings.

The third part will look at sequence classification. Sequence classification is a predictive modeling problem where you have some sequence of inputs over space or time and the task is to predict a category for the sequence. What makes this problem difficult is that the sequences can vary in length, be comprised of a very large vocabulary of input symbols and may require the model to learn the long-term context or dependencies between symbols in the input sequence.

The forth and final part of the tutorial will make us think twice about the use of recurrent neural networks, and look at the performance that can be achieved just by using feed-forward convolutions over time.

Through this part of the tutorial you'll learn how to:

* How to learn a language model using a recurrent network & to sample the model to generate new language.
* How to use callbacks during training to monitor progress.
* How to use a word embedding to project one-hot encoded word vectors into a lower dimensional latent space.
* How to encorporate pre-trained word embeddings into you models.
* How to develop an LSTM model for a sequence classification problem.
* How to use temporal convolutions for sequence prediction tasks.


## Getting started 
To work through this lab you'll use the Python 3 language in a Jupyter Notebook environment, with the `pytorch` tensor library, the `torchvision` utility library and the `torchbearer` model training library. We'll also use the `matplotlib`, `scikit-learn` and `numpy` packages. We will primarily be using [Google Colab](http://colab.research.google.com/) to run the notebooks as this gives you access to an environment with all the tools required. If you wish to run the notebooks locally, see the information in the section below.

The following is a list of the notebooks for this lab, with links to open directly in Google Colab (once opened you should immediately save a copy in your Google Drive otherwise anything you do will be lost once the browser closes), or to download locally. You should work through the notebooks in numeric order as they follow on from each other. 

7.1 Modelling Sequences | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab7/7_1_SequenceModelling.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab7/7_1_SequenceModelling.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab7/7_1_SequenceModelling.ipynb)
7.2 Word Embeddings | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab7/7_2_WordEmbeddings.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab7/7_2_WordEmbeddings.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab7/7_2_WordEmbeddings.ipynb)
7.3 Sequence Classification | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab7/7_3_SequenceClassification.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab7/7_3_SequenceClassification.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab7/7_3_SequenceClassification.ipynb)
7.4 Convolutional Sequence Classification | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab7/7_4_CNNSequenceClassification.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab7/7_4_CNNSequenceClassification.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab7/7_4_CNNSequenceClassification.ipynb)


__Important:__ At the end of the lab you must save your notebooks and associated files to a safe location. At the end of the this lab you will be required to submit them (together with the notebooks for lab 8) to handin: [https://handin.ecs.soton.ac.uk/handin/1819/COMP6248/3/](https://handin.ecs.soton.ac.uk/handin/1819/COMP6248/3/). You must use the exact Jupyter notebooks we provide as they contain metadata which is used for assessing the exercises within them.


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