---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2019-20"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
---

Welcome to the homepage for the ECS [COMP6248 Deep Learning](https://secure.ecs.soton.ac.uk/module/COMP6248) module.

Deep learning has revolutionised numerous fields in recent years. We've witnessed improvements in everything from computer vision through speech analysis to natural language processing as a result of the advent of cheap GPGPU compute coupled with large datasets and some neat algorithms. More broadly, the idea of 'Differentiable Programming', in which we define entire programs as compositions of differentiable operations which can then be optimised to fit data, looks to become a new norm in how we utilise computers.

This module will look at how differentiable programming works, from theoretical foundations right through to practical implementation. We'll study key aspects such as automatic differentiation, look at models for _deep learning_ such as convolutional and recurrent neural networks, as well as considering current research in depth. Along the way we'll also look at aspects of biology and neuroscience, and see how ideas from these fields feed-in to current research.

The overall aim of this module is not to teach you to be able to train pre-existing models (although you will learn to do that!), but rather to equip you with the fundamental skills to be able to understand and implement models and ideas that are currently being developed by researchers. We intend to equip you with the knowledge needed to understand new ideas as they are published, and give you the ability to constructively critisise, and identify limitations, of different approaches.


## Lectures and assigned reading

The lectures for this course will be given by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a> ([email](mailto:jsh2@ecs.soton.ac.uk)) together with a few invited speakers. 

There will be two lectures each week. The lecture slots are on predominantly on Mondays at 9 and Fridays at 5 (sorry! I have no control over this), although a few of the Friday slots have been shuffled to Wednesdays. The current working timetable/plan is below, and illustrates the topics I intend to cover, but this will evolve as the course progresses. Many of the lectures are coupled with assigned reading materials that you should read before the lecture takes place. This will broaden your understanding of the topic whilst giving you the skills required to read and understand the key points from recent research literature. The lectures are broadly broken into three groups: fundamentals (weeks 1-4), architectures (weeks 5-8), and advanced topics (weeks 9-12).  

| Week | Date   | Location      | Topic                                                                    | Handouts                                                                       | Reading Material                        | 
|------|--------|---------------|--------------------------------------------------------------------------|--------------------------------------------------------------------------------|-----------------------------------------| 
| 1    | 27-Jan | Avenue L/T A  | Intro and background                                                     | [intro-handouts.pdf](handouts/intro-handouts.pdf)                              |                                         | 
|      | 31-Jan | 67/1037       | Review of fundamentals                                                   | [mlreview-handouts.pdf](handouts/mlreview-handouts.pdf)                        | [CH 3 of Michael Nielsen's Book](http://neuralnetworksanddeeplearning.com/chap3.html)                                                                        |                                         | 
| 2    | 03-Feb | Avenue L/T A  | The Power of Differentiation                                             | [differentiate-handouts.pdf](handouts/differentiate-handouts.pdf)              |                                         | 
|      | 07-Feb | 67/1037       | Perceptrons, MLPs and Backpropagation                                    | [backprop-handouts.pdf](handouts/backprop-handouts.pdf)                        | [Learning representations by back-propagating errors](handouts/nature_article.pdf)                    | 
| 3    | 10-Feb | Avenue L/T A  | Automatic Differentiation                                                | [autograd-handouts.pdf](handouts/autograd-handouts.pdf)                        | [Automatic differentiation in PyTorch](https://openreview.net/pdf?id=BJJsrmfCZ) | 
|      | 12-Feb | SUSU Cinema   | Optimisation                                                             | [optimisation-handouts.pdf](handouts/optimisation-handouts.pdf)                                                                            |  [Adam: A Method for Stochastic Optimization](https://arxiv.org/abs/1412.6980)                                       | 
| 4    | 17-Feb | Avenue L/T A  | Deeper Networks: Universal approximation, overfitting and regularisation | [deepnetworks-handouts.pdf](handouts/deepnetworks-handouts.pdf)                |        [Dropout:A Simple Way to Prevent Neural Networks from Overfitting](handouts/srivastava14a.pdf)                           | 
|      | 28-Feb | SUSU Cinema   | A Biological Perspective                                                 | [biological-inspiration-handouts.pdf](handouts/biological-inspiration-handouts.pdf)              |                                         | 
| 5    | 24-Feb | Avenue L/T A  | Guest Lecture - Ethan Harris - Visualising Neural Networks               | | | 
|      | 19-Feb | 67/1037       | Convolutional Networks                                                   | [Convolution-handouts.pdf](handouts/Convolution-handouts.pdf)                  | [handwritten digit recognition with a back-propagation network](https://papers.nips.cc/paper/293-handwritten-digit-recognition-with-a-back-propagation-network.pdf)                                        | 
| 6    | 02-Mar | Avenue L/T A  | Networks Architectures for image classification                          | [Architectures-handouts.pdf](handouts/Architectures-handouts.pdf)                                                                              | [ImageNet Classification with Deep Convolutional Neural Networks](https://papers.nips.cc/, aper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf), [Striving for Simplicity: The All Convolutional Net](https://arxiv.org/pdf/1412.6806.pdf), [Very Deep Convolutional Networks for Large-Scale Image Recognition](https://arxiv.org/pdf/1409.1556.pdf), [Going Deeper with Convolutions](https://arxiv.org/pdf/1409.4842), [Deep Residual Learning for Image Recognition](https://arxiv.org/pdf/1512.03385.pdf) | 
|      | 06-Mar | 67/1037   	| Networks Architectures for image classification (II)                     | as above                                                                               |                                         | 
| 7    | 09-Mar | Avenue L/T A  | Recurrent Neural Networks                                                | [rnn-handout.pdf](handouts/rnns-handouts.pdf)    |[The Unreasonable Effectiveness of Recurrent Neural Networks](http://karpathy.github.io/2015/05/21/rnn-effectiveness/) 
|      | 13-Mar | 67/1037       | LSTMs and GRUs                                                           | [lstm-handout.pdf](handouts/lstm-handouts.pdf)   | [Recurrent Neural Network Regularization](https://arxiv.org/pdf/1409.2329.pdf) | 
| 8    | 16-Mar | Avenue L/T A  | Embeddings                                                               | [Embeddings-handout.pdf](handouts/Embeddings-handouts.pdf)  | [Efficient Estimation of Word Representations in Vector Space](https://arxiv.org/pdf/1301.3781.pdf)                                         | 
|      | 20-Mar | 67/1037       | Auto-encoders and, unsupervised learning and self-supervision            | [vaes-handout.pdf](handouts/vaes-handouts.pdf)   |      [Blog Post on Autoencoders](https://blog.keras.io/building-autoencoders-in-keras.html)
| 9    | 20-Apr | Avenue L/T A  | Differentiable relaxations (sampling, etc.)                              | | |
|      | 24-Apr | 67/1037       | Generative Models: GANs, GLO, Wavenet, etc                               | [gans-handout.pdf](handouts/gans-handouts.pdf)   | [GANs](https://papers.nips.cc/paper/5423-generative-adversarial-nets.pdf), [DCGANs](https://arxiv.org/pdf/1511.06434.pdf), [Wasserstein GANs](https://arxiv.org/pdf/1701.07875.pdf)                                     | 
| 10   | 27-Apr | Avenue L/T A  | Assorted topics                                                          | | |
|      | 01-May | 67/1037       | Assorted topics                                                          | | |
| 11   | 04-May | Avenue L/T A  | Guest research lecture                                                   | | |
|      | 06-May | 100/1001      | Guest research lecture                                                   | | |
| 12   | 15-May | Avenue L/T A  | Wrap-up lecture                                                          | | |
|      | 17-May | 67/1037       |                                                                          | | |


## Labs

For 8 of the weeks we are organising a 2-hour lab session in which you will need to complete a series of worksheets. The worksheets have been designed to put the theory covered in the lectures into context, and the equip you with practical skills in implementing and training differentiable programs. A team of PhD-student demonstrators will be available in the lab to help you with any questions you might have about the topics you are working on.

40% of the marks for the module are for lab work. Each of the 8 lab sessions will be accompanied by an additional assessed exercise for you to work through in your own time. You will have to work through the exercises __by yourself__ and write-up your findings. You will submit your answers/findings/working to all the assessed exercises to [handin](https://handin.ecs.soton.ac.uk/handin/1920/COMP6248/3/) in week 11 for marking (6th May, 16:00). Each of the 8 exercises will be worth 5% of your overall module mark. We recommend that you do the exercise accompanying the lab as soon as possible after the lab session, rather than leaving them all to the end.

Labs will start in the second week (5th Feb) 9-11 on Wednesday mornings in Zepler Level 2. The full lab schedule is below:

| Week | Date   | Location  | Topic                                                                                                 | Exercise Link                        |
|------|--------|-----------|-------------------------------------------------------------------------------------------------------|--------------------------------------|
| 1    | 29-Jan |           | NO LAB                                                                                                |                                      |
| 2    | 05-Feb | Zepler L2 | [Introducing PyTorch](./labs/lab1/)                                                                   | [Lab 1 Exercise](./labex/lab1ex.pdf) |
| 3    | 12-Feb | Zepler L2 | [Automatic Differentiation](./labs/lab2/)                                                             | [Lab 2 Exercise](./labex/lab2ex.pdf) |
| 4    | 19-Feb | Zepler L2 | [Optimisation](./labs/lab3/)                                                                          | [Lab 3 Exercise](./labex/lab3ex.pdf) |
| 5    | 26-Feb | Zepler L2 | [Implementing simple Neural Networks using PyTorch and Torchbearer](./labs/lab4/)                     |                                      |
| 6    | 04-Mar |           | _No Lab_                                                                                              |                                      |
| 7    | 11-Mar | Zepler L2 | [Implementing and training Convolutional Neural Networks using PyTorch and Torchbearer](./labs/lab5/) |                                      |
| 8    | 18-Mar | Zepler L2 | [Using pretrained models and transfer learning](./labs/lab6)                                          |                                      |
| 9    | 22-Apr | Zepler L2 | [Recurrent Networks, Sequence Prediction and Embeddings](./labs/lab7)                                 |                                      |
| 10   | 29-Apr | Zepler L2 | [Autoencoders and Deep Generative Models](./labs/lab8)                                                |                                      |
| 11   | 06-May | Zepler L2 | Coursework Help and Advice                                                                            |                                      |
| 12   | 13-May | Zepler L2 | Coursework Help and Advice                                                                            |                                      |

__Note: I've made all the worksheet links available from last year. Please don't be surprised if we make some updates before each session!__

## Online Quizzes

There will be two assessed online-quizzes; I'm planning for these to be on the 5th March and 30th April. More details to follow.

## Coursework assignment

Information on the coursework assignment (worth 40% of the module) is [here](coursework.html).

<!---
## Additional Lecture Notes

Additional Notes from Lectures 5 and 8 can be found [here](handouts/KateNotes.pdf)
-->

## Where to get additional help

Talk to me! You are more than welcome to arrange to meet to discuss issues related to the course - I will be in the labs each week. The lab sessions are also facilitated by a team of our PhD students who are experts in the deep learning / differentiable programming field in their own right (many of them have published work in this space, or are close to achieving that). I can be reached by [email](mailto:jsh2@ecs.soton.ac.uk) or by coming to find me in my office (32/4043). 

