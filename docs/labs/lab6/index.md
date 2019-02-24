---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2018-19"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
rdir: '../../'
---

# Lab 6 - Using pretrained models and transfer learning

_[Jonathon Hare, 9th Oct 2018](https://github.com/ecs-vlc/COMP6248)_

## Change History

- 20181009: Initial version

## Acknowledgements
This lab started out its life as a Keras practical developed for the VLC group based on Jason Brownlee's ["Handwritten Digit Recognition using Convolutional Neural Networks in Python with Keras"](http://machinelearningmastery.com/handwritten-digit-recognition-using-convolutional-neural-networks-python-keras/) tutorial. It subsequently evolved as it was used in tutorials run for external organisations including Ordnance Survey, Lloyds Register and DISCNet. 

This version is refocussed on using PyTorch with Torchbearer. A number of changes have been made to ensure that it better fits our format and I've also added additional information and exercises throughout. 

## Introduction 
Now we've seen how we can use PyTorch to work towards the solution of a handwriting recognition problem, we'll turn our focus to data that is more realistic, using deep-learning models that are much closer to state of the art. The problem with using better models is that we need massive amounts of labelled data to train these models from scratch, and also large amounts of time (typically days of training, even using multiple GPUs). Rather than training from scratch we'll explore using transfer learning and fine-tuning using pre-trained models. The pre-trained models that we'll play with were trained using the ImageNet dataset, which consists of about 1.3 million images in 1000 classes.

Through this part of the tutorial you'll learn how to:

* How to load image data from the file system
* How to develop and evaluate a simple CNN for classification.
* How to use custom callbacks to monitor training progress.
* How to load a pre-trained model and use it to make classifications.
* How to modify and fine-tune a pre-trained model to solve the a classification problem.
* How to extract _semantic_ features that can be used for transfer learning and finding similar features.

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

If you want to work on your own machine we recommend using the Anaconda python distribution. Running `conda install pytorch torchvision -c pytorch` (see https://pytorch.org/get-started/locally/ for more options) will install both pytorch and torchvision. Torchbearer can be installed with `pip install torchbearer`.
