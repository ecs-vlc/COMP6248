# COMP6248 Differentiable Programming/Deep Learning: Lab 5 - Implementing and training Convolutional Neural Networks using PyTorch and Torchbearer

_[Jonathon Hare, 2nd Nov 2018](https://github.com/ecs-vlc/COMP6248)_

## Change History

- 20181102: Initial version

## Acknowledgements

This lab started out its life as a Keras practical developed for the VLC group based on Jason Brownlee's ["Handwritten Digit Recognition using Convolutional Neural Networks in Python with Keras"](http://machinelearningmastery.com/handwritten-digit-recognition-using-convolutional-neural-networks-python-keras/) tutorial. It subsequently evolved as it was used in tutorials run for external organisations including Ordnance Survey, Lloyds Register and DISCNet. 

This version is refocussed on using PyTorch with Torchbearer. A number of changes have been made to ensure that it better fits our format and I've also added additional information and exercises throughout. 

## Introduction 

In the last lab we saw how to implement and train simple multi-layer perceptrons using PyTorch and Torchbearer.

In this lab you will discover how to develop Convolutional deep learning models to achieve near state of the art performance on the MNIST handwritten digit recognition task in Python using the PyTorch deep learning library.

Through this lab'll learn how to:

* How to implement and evaluate a simple Convolutional Neural Network for MNIST.
* How to implement a close to state-of-the-art deep learning model for MNIST.
* How to serialise and deserialise trained models.
* How to load your own image created outside of the MNIST dataset, and pass it through the network.
* How to visualise the filters learned by the network.
* How to implement networks with branching and merging.

## Getting started 

To work through this lab you'll use the Python 3 language in a Jupyter Notebook environment, with the `pytorch` tensor library, the `torchvision` utility library and the `torchbearer`model training library. We'll also use the `matplotlib`, `scikit-learn` and `numpy` packages. We will primarily be using [Google Colab](http://colab.research.google.com/) to run the notebooks as this gives you access to an environment with all the tools required. If you wish to run the notebooks locally, see the information in the section below.

The following is a list of the notebooks for this lab, with links to open directly in Google Colab (once opened you should immediately save a copy in your Google Drive otherwise anything you do will be lost once the browser closes), or to download locally. You should work through the notebooks in numeric order as they follow on from each other. 


5.1 Training and evaluating simple CNNs | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab5/5_1_CNN.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab5/5_1_CNN.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab5/5_1_CNN.ipynb)
5.2 Loading a saved model | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab5/5_2_Loading.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab5/5_2_Loading.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab5/5_2_Loading.ipynb)
5.3 Visualising Convolutional Networks | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab5/5_3_Visualise.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab5/5_3_Visualise.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab5/5_3_Visualise.ipynb)
5.4 More advanced networks | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ecs-vlc/COMP6248/blob/master/docs/labs/lab5/5_4_Topologies.ipynb) | [preview](https://github.com/ecs-vlc/COMP6248/blob/master/docs/labs/lab5/5_4_Topologies.ipynb) | [download](https://raw.githubusercontent.com/ecs-vlc/COMP6248/master/docs/labs/lab5/5_4_Topologies.ipynb)


__Important:__ At the end of the lab you must save your notebooks and associated files to a safe location. At the end of the sixth lab you will be required to submit them (together with the notebooks for labs 5 and 6) to handin: __TBC__. You must use the exact Jupyter notebooks we provide as they contain metadata which is used for assessing the exercises within them.

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