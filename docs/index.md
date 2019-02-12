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
|      | 15-Feb | 58/1067 L/T   | Optimisation                           |    [optimisation-handouts.pdf](handouts/optimisation-handouts.pdf)                                                                            |  [Adam: A Method for Stochastic Optimization](https://arxiv.org/abs/1412.6980)                                       | 
| 4    | 20-Feb | 44/1041 L/T A | Deeper Networks                                 |                                                                                |                                         | 
|      | 22-Feb | 58/1067 L/T   | A Biological Perspective					      | [biological-inspiration.pdf](handouts/biological-inspiration.pdf)              |                                         | 
| 5    | 27-Feb | 2A/2065 L/T H | Convolutional Networks                          |                                                                                |                                         | 
|      | 01-Mar | 58/1067 L/T   | Networks for image classification               |                                                                                |                                         | 
| 6    | 06-Mar | 2A/2065 L/T H | Networks for other visual tasks                 |                                                                                |                                         | 
|      | 08-Mar | 58/1067 L/T   | Networks for text analysis                      |                                                                                |                                         | 
| 7    | 13-Mar | 2A/2065 L/T H | Recurrent Neural Networks                       |                                                                                |                                         | 
|      | 15-Mar | 58/1067 L/T   | LSTMs and GRUs                                  |                                                                                |                                         | 
| 8    | 20-Mar | 2A/2065 L/T H | Auto-encoder architectures                      |                                                                                |                                         | 
|      | 22-Mar | 58/1067 L/T   | GANs                                            |                                                                                |                                         | 
| 9    | 27-Mar | 2A/2065 L/T H | Assorted topics (feel free to make suggestions) |                                                                                |                                         | 
|      | 29-Mar | 58/1067 L/T   | Assorted topics (feel free to make suggestions) |                                                                                |                                         | 
| 10   | 01-May | 2A/2065 L/T H | Guest research lecture                          |                                                                                |                                         | 
|      | 03-May | 58/1067 L/T   | Guest research lecture                          |                                                                                |                                         | 
| 11   | 06-May | 2A/2065 L/T H | Guest research lecture                          |                                                                                |                                         | 
|      | 10-May | 58/1067 L/T   | Guest research lecture                          |                                                                                |                                         | 
| 12   | 15-May | 2A/2065 L/T H | Wrap-up lecture                                 |                                                                                |                                         | 
|      | 17-May | 58/1067 L/T   |                                                 |                                                                                |                                         | 


## Labs

40% of the marks for the module are for assessed lab sessions. Each week we are organising a 2-hour lab session which you will need to complete. The labs have been designed to put the theory covered in the lectures into context, and the equip you with practical skills in implementing and training differentiable programs.

The lab schedule is below:

| Week | Date   | Location            | Topic                                                                                 | Submission Deadline | Handin link 										    | 
|------|--------|---------------------|---------------------------------------------------------------------------------------|---------------------|-------------------------------------------------------| 
| 1    | 29-Jan |                     | NO LAB                                                                                |                     |                                      				    | 
| 2    | 05-Feb | 25/[1007/1009/1011] | [Introducing PyTorch](./labs/lab1/)                                                                   | 22 Feb, 16:00       | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/1/) | 
| 3    | 12-Feb | 25/[1007/1009/1011] | [Automatic Differentiation](./labs/lab2/)                                                             | 22 Feb, 16:00       | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/1/) | 
| 4    | 19-Feb | 25/[1007/1009/1011] | Backpropagation and optimisation                                                      | 22 Feb, 16:00       | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/1/) | 
| 5    | 26-Feb | 25/[1007/1009/1011] | Implementing simple Neural Networks using PyTorch and Torchbearer                     | 15 Mar, 16:00       | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/2/) | 
| 6    | 05-Mar | 25/[1007/1009/1011] | Implementing and training Convolutional Neural Networks using PyTorch and Torchbearer | 15 Mar, 16:00       | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/2/) | 
| 7    | 12-Mar | 25/[1007/1009/1011] | Using pretrained models and transfer learning                                         | 15 Mar, 16:00       | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/2/) | 
| 8    | 19-Mar | 25/[1007/1009/1011] | Recurrent Networks, Sequence Prediction and Embeddings                                | 3 May, 16:00        | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/3/) | 
| 9    | 26-Mar | 25/[1007/1009/1011] | Deep Generative Models                                                                | 3 May, 16:00        | [COMP6248/1/](http://handin.ecs.soton.ac.uk/handin/1819/COMP6248/3/) | 
| 10   | 30-Apr | 25/[1007/1009/1011] | Coursework Help and Advice                                                            |                     |             											| 
| 11   | 07-May | 25/[1007/1009/1011] | Coursework Help and Advice                                                            |                     |             											| 
| 12   | 14-May | 25/[1007/1009/1011] | Coursework Help and Advice                                                            |                     |             											| 


## Online Quizzes

There will be two assessed online-quizzes. Details to follow.

## Coursework assignment

Information on the coursework assignment (worth 40% of the module) is [here](coursework.html).

## Where to get additional help

Talk to us! You are more than welcome to arrange to meet with us to discuss issues related to the course - we will be in the labs each week. The lab sessions are also facilitated by a team of our PhD students who are experts in the deep learning / differentiable programming field in their own right (many of them have published work in this space, or are close to achieving that). <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Kate</a> ([email](mailto:kf2u17@ecs.soton.ac.uk)) and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Jon</a> ([email](mailto:jsh2@ecs.soton.ac.uk)) can both be reached by email or by coming to find us in our offices (32/3015 for Kate & 32/3019 for Jon). 

