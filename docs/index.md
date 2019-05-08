---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2018-19"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
---

Welcome to the homepage for the ECS [COMP6248 Deep Learning](https://secure.ecs.soton.ac.uk/module/COMP6248) module.

Deep learning has revolutionised numerous fields in recent years. We've witnessed improvements in everything from computer vision through speech analysis to natural language processing as a result of the advent of cheap GPGPU compute coupled with large datasets and some neat algorithms. More broadly, the idea of 'Differentiable Programming' in which we define entire programs as compositions of differentiable operations which can then be optimised to fit data looks to become a new norm in how we utilise computers.

This module will look at how differentiable programming works, from theoretical foundations right through to practical implementation. We'll study key aspects such as automatic differentiation, look at models for _deep learning_ such as convolutional and recurrent neural networks, as well as considering current research in depth. 

The overall aim of this module is not to teach you to be able to train pre-existing models (although you will learn to do that!), but rather to equip you with the fundamental skills to be able to understand and implement models and ideas that are currently being developed by researchers. We intend to equip you with the knowledge needed to understand new ideas as they are published, and give you the ability to constructively critisise, and identify limitations, of different approaches.


## Lectures and assigned reading

The lectures for this course will be given by <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> ([email](mailto:kf2u17@ecs.soton.ac.uk)) and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a> ([email](mailto:jsh2@ecs.soton.ac.uk)). 

There will be two lectures each week. The lecture slots are on Wednesdays and Fridays. The current working timetable/plan is below, and illustrates the topics we intend to cover, but this will evolve as the course progresses. Many of the lectures are coupled with assigned reading materials that you should read before the lecture takes place. This will broaden your understanding of the topic whilst giving you the skills required to read and understand the key points from recent research literature.

| Week | Date   | Location      | Topic                                           | Handouts                                                                       | Reading Material                        | 
|------|--------|---------------|-------------------------------------------------|--------------------------------------------------------------------------------|-----------------------------------------| 
| 1    | 30-Jan | 2A/2065 L/T H | Intro and background                            | [intro-handouts.pdf](handouts/intro-handouts.pdf)                              |                                         | 
|      | 01-Feb | 58/1067 L/T   | Review of ML fundamentals                       | [mlreview-handouts.pdf](handouts/mlreview-handouts.pdf)                        | [CH 3 of Michael Nielsen's Book](http://neuralnetworksanddeeplearning.com/chap3.html)                                                                        |                                         | 
| 2    | 06-Feb | 2A/2065 L/T H | The Power of Differentiation                    | [differentiate-handouts.pdf](handouts/differentiate-handouts.pdf)              |                                         | 
|      | 08-Feb | 58/1067 L/T   | Automatic Differentiation                       | [autograd-handouts.pdf](handouts/autograd-handouts.pdf)                        | [Automatic differentiation in PyTorch](https://openreview.net/pdf?id=BJJsrmfCZ) | 
| 3    | 13-Feb | 2A/2065 L/T H | Solving Deeper Multilayer Perceptrons (MLPs)    | [backprop-handouts.pdf](handouts/backprop-handouts.pdf)|   [Learning representations by back-propagating errors](handouts/nature_article.pdf)                                      | 
|      | 15-Feb | 58/1067 L/T   | Optimisation                                    | [optimisation-handouts.pdf](handouts/optimisation-handouts.pdf)                                                                            |  [Adam: A Method for Stochastic Optimization](https://arxiv.org/abs/1412.6980)                                       | 
| 4    | 20-Feb | 1200 in 32/1015 (Note location & time this week!) | A Biological Perspective					      | [biological-inspiration-handouts.pdf](handouts/biological-inspiration-handouts.pdf)              |                                         | 
|      | 22-Feb | 58/1067 L/T | Deeper Networks             |  [deepnetworks-handouts.pdf](handouts/deepnetworks-handouts.pdf)  |        [Dropout:A Simple Way to Prevent Neural Networks from Overfitting](handouts/srivastava14a.pdf)                           | 
| 5    | 27-Feb | 2A/2065 L/T H | Convolutional Networks                          | [Convolution-handouts.pdf](handouts/Convolution-handouts.pdf)                  | [handwritten digit recognition with a back-propagation network](https://papers.nips.cc/paper/293-handwritten-digit-recognition-with-a-back-propagation-network.pdf)                                        | 
|      | 01-Mar | 58/1067 L/T   | Networks Architectures for image classification | [Architectures-handouts.pdf](handouts/Architectures-handouts.pdf)                                                                              | [ImageNet Classification with Deep Convolutional Neural Networks](https://papers.nips.cc/, aper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf), [Striving for Simplicity: The All Convolutional Net](https://arxiv.org/pdf/1412.6806.pdf), [Very Deep Convolutional Networks for Large-Scale Image Recognition](https://arxiv.org/pdf/1409.1556.pdf), [Going Deeper with Convolutions](https://arxiv.org/pdf/1409.4842), [Deep Residual Learning for Image Recognition](https://arxiv.org/pdf/1512.03385.pdf) | 
| 6    | 06-Mar | 2A/2065 L/T H | Networks Architectures for image classification (II)                 | as above                                                                               |                                         | 
|      | 08-Mar | 58/1067 L/T   |   Recurrent Neural Networks                   |    [rnn-handout.pdf](handouts/rnns-handouts.pdf)    |[The Unreasonable Effectiveness of Recurrent Neural Networks](http://karpathy.github.io/2015/05/21/rnn-effectiveness/) 
| 7    | 13-Mar | 2A/2065 L/T H |    __cancelled__     |                                                                                
|      | 15-Mar | 58/1067 L/T   | LSTMs and GRUs  | [lstm-handout.pdf](handouts/lstm-handouts.pdf)| [Recurrent Neural Network Regularization](https://arxiv.org/pdf/1409.2329.pdf) | 
| 8    | 20-Mar | 2A/2065 L/T H | Guest research lecture | [lec.pdf](handouts/lec.pdf)                                                                               |                                         | 
|      | 22-Mar | 58/1067 L/T   | Embeddings | [Embeddings-handout.pdf](handouts/Embeddings-handouts.pdf)| [Efficient Estimation of Word Representations in Vector Space](https://arxiv.org/pdf/1301.3781.pdf)                                         | 
| 9    | 27-Mar | 2A/2065 L/T H | Auto-encoder architectures |    [vaes-handout.pdf](handouts/vaes-handouts.pdf)  |      [Blog Post on Autoencoders](https://blog.keras.io/building-autoencoders-in-keras.html)
|      | 29-Mar | 58/1067 L/T   | Assorted topics    |                                                                                |                                         | 
| 10   | 01-May | 2A/2065 L/T H |   GANs   |   [gans-handout.pdf](handouts/gans-handouts.pdf)| [GANs](https://papers.nips.cc/paper/5423-generative-adversarial-nets.pdf), [DCGANs](https://arxiv.org/pdf/1511.06434.pdf), [Wasserstein GANs](https://arxiv.org/pdf/1701.07875.pdf)                                     | 
|      | 03-May | 58/1067 L/T   | Assorted topics                          |                                                                                |                                         | 
| 11   | 06-May | 2A/2065 L/T H | Guest research lecture                          |                                                                                |                                         | 
|      | 08-May | 58/1067 L/T   | Guest research lecture (Matt - Disentanglement)                          | [disentanglement.pdf](handouts/disentanglement.pdf)                                                                                |                                         | 
| 12   | 15-May | 2A/2065 L/T H | Wrap-up lecture                                 |                                                                                |                                         | 
|      | 17-May | 58/1067 L/T   |                                                 |                                                                                |                                         | 


## Labs

40% of the marks for the module are for assessed lab sessions. Each week we are organising a 2-hour lab session which you will need to complete. The labs have been designed to put the theory covered in the lectures into context, and the equip you with practical skills in implementing and training differentiable programs.

The lab schedule is below:

| Week | Date   | Location            | Topic                                                                                 | Submission Deadline | Handin link 										    | 
|------|--------|---------------------|---------------------------------------------------------------------------------------|---------------------|-------------------------------------------------------| 
| 1    | 29-Jan |                     | NO LAB                               |                     |                    				    | 
| 2    | 05-Feb | 25/[1007/1009/1011] | [Introducing PyTorch](./labs/lab1/)                                                                   | 1 Mar, 16:00       | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/1/) | 
| 3    | 12-Feb | 25/[1007/1009/1011] | [Automatic Differentiation](./labs/lab2/)                                                             | 1 Mar, 16:00       | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/1/) | 
| 4    | 19-Feb | 25/[1007/1009/1011] | [Optimisation](./labs/lab3/)                                                      | 1 Mar, 16:00       | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/1/) | 
| 5    | 26-Feb | 25/[1007/1009/1011] | [Implementing simple Neural Networks using PyTorch and Torchbearer](./labs/lab4/)                    | 22 Mar, 16:00       | [COMP6248/2/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/2/) | 
| 6    | 05-Mar | 25/[1007/1009/1011] | [Implementing and training Convolutional Neural Networks using PyTorch and Torchbearer](./labs/lab5/) | 22 Mar, 16:00       | [COMP6248/2/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/2/) | 
| 7    | 12-Mar | 25/[1007/1009/1011] | [Using pretrained models and transfer learning](./labs/lab6)                                         | 22 Mar, 16:00       | [COMP6248/2/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/2/) | 
| 8    | 19-Mar | 25/[1007/1009/1011] | Catch-up week                                |         |  | 
| 9    | 26-Mar | 25/[1007/1009/1011] | [Recurrent Networks, Sequence Prediction and Embeddings](./labs/lab7)                                | 10 May, 16:00        | [COMP6248/3/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/3/) | 
| 9    | 30-Apr | 25/[1007/1009/1011] | [Autoencoders and Deep Generative Models](./labs/lab8)                                                                | 10 May, 16:00        | [COMP6248/3/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/3/) | 
| 11   | 07-May | 25/[1007/1009/1011] | Coursework Help and Advice                                                            |                     |             											| 
| 12   | 14-May | 25/[1007/1009/1011] | Coursework Help and Advice                                                            |                     |             											| 


## Online Quizzes

There will be two assessed online-quizzes. Details to follow.

## Coursework assignment

Information on the coursework assignment (worth 40% of the module) is [here](coursework.html).

## Additional Lecture Notes

Additional Notes from Lectures 5 and 8 can be found [here](handouts/KateNotes.pdf)

## Where to get additional help

Talk to us! You are more than welcome to arrange to meet with us to discuss issues related to the course - we will be in the labs each week. The lab sessions are also facilitated by a team of our PhD students who are experts in the deep learning / differentiable programming field in their own right (many of them have published work in this space, or are close to achieving that). <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Kate</a> ([email](mailto:kf2u17@ecs.soton.ac.uk)) and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Jon</a> ([email](mailto:jsh2@ecs.soton.ac.uk)) can both be reached by email or by coming to find us in our offices (32/3015 for Kate & 32/3019 for Jon). 

