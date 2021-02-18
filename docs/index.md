---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2020-21"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
---


<h2> Contents </h2>
{::options parse_block_html="true" /}
<nav>
* TOC
{:toc}
</nav>
{::options parse_block_html="false" /}

## Welcome

Welcome to the homepage for the ECS [COMP6248 Deep Learning](https://secure.ecs.soton.ac.uk/module/COMP6248) module.

Differentiable Programming and Deep learning has revolutionised numerous fields in recent years. We've witnessed improvements in everything from computer vision through speech analysis to natural language processing as a result of the advent of cheap GPGPU compute coupled with large datasets and some neat algorithms. More broadly, the idea of 'Differentiable Programming', in which we define entire programs as compositions of differentiable operations which can then be optimised to fit data, looks to become a new norm in how we utilise computers.

This module will look at how differentiable programming works, from theoretical foundations right through to practical implementation. We'll study key aspects such as automatic differentiation, look at models for _deep learning_ such as convolutional and recurrent neural networks, as well as considering current research in depth. Along the way we'll also look at aspects of biology and neuroscience, and see how ideas from these fields feed-in to current research.

The overall aim of this module is not to teach you to be able to train pre-existing models (although you will learn to do that!), but rather to equip you with the fundamental skills to be able to understand and implement models and ideas that are currently being developed by researchers. We intend to equip you with the knowledge needed to understand new ideas as they are published, and give you the ability to constructively criticise, and identify limitations, of different approaches.

As a word of warning, this is a mathematical module: the predominant focus is on looking at models that can be optimised via gradient methods. You need to have a good grasp of linear (matrix) algebra and matrix calculus, as well as the fundamentals of machine learning, probability and statistics. You will also necessarily be comfortable with Python programming and the use of numeric/matrix libraries such as numpy or pytorch.


## Lectures and assigned reading

This year the lectures for this course will be given by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a> ([email](mailto:jsh2@ecs.soton.ac.uk)) together with a few invited speakers. <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> and <a href="http://www.ecs.soton.ac.uk/people/xc1f20">Dr Xiaohao Cai</a> will be helping out with the running of online lectures, the running of the labs, and the coursework assignment. We have a capable team of PhD students to facilitate the lab sessions.

There will be two lectures each week, one on Tuesday's at 12, and the other on Thursday's at 10. The lectures will all take place online and will be streamed live via Teams, as well as being recorded and made available through links placed on this page. 

By taking part in this module we _expect_ you to turn up to the live sessions and get involved - asking questions and provocking discussion via the text chat is positively encouraged. By having two lecturers working together in the sessions we hope to be able to interactively respond to queries and make the sessions as interactive as possible given the circumstances.

The current working timetable/plan is below, and illustrates the topics I intend to cover, but this will evolve as the course progresses. Many of the lectures are coupled with assigned reading materials that you should read before the lecture takes place. This will broaden your understanding of the topic whilst giving you the skills required to read and understand the key points from recent research literature. The lectures are broadly broken into three groups: fundamentals (weeks 1-4), architectures/models (weeks 5-8), and advanced topics (weeks 9-12).  


| Week | Date   | Location      | Topic                                                                    | Handouts                                                                       | Reading Material                        | Lecture Video |
|------|--------|---------------|--------------------------------------------------------------------------|--------------------------------------------------------------------------------|-----------------------------------------|---------------|
| 1    | 02-Feb  | Teams | Intro and background                                                     | [intro-handouts.pdf](handouts/intro-handouts.pdf)                              |                                         | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=3d460623-7f39-4631-b1c2-acc300df9b45) |
|      | 04-Feb | Teams | Review of fundamentals                                                   | [mlreview-handouts.pdf](handouts/mlreview-handouts.pdf)                        | [CH 3 of Michael Nielsen's Book](http://neuralnetworksanddeeplearning.com/chap3.html)                                                                        | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=3f20e286-d985-4889-9e76-acc500e16d41) |
| 2    | 09-Feb | Teams | The Power of Differentiation                                             | [differentiate-handouts.pdf](handouts/differentiate-handouts.pdf)              |                                         |  [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=580b98a9-cff0-4583-b2c8-acca00de6a73) |
|      | 11-Feb | Teams | Perceptrons, MLPs and Backpropagation                                    | [backprop-handouts.pdf](handouts/backprop-handouts.pdf)                        | [Learning representations by back-propagating errors](handouts/nature_article.pdf)                    |  [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=f9ee635b-4348-4378-8053-accc00c27dc3) |
| 3    | 16-Feb | Teams | Automatic Differentiation                                                | [autograd-handouts.pdf](handouts/autograd-handouts.pdf)                        | [Automatic differentiation in PyTorch](https://openreview.net/pdf?id=BJJsrmfCZ) |  [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=d2b3d6f1-bbba-41c3-a35f-acd100f57f30) |
|      | 18-Feb | Teams | Optimisation                                                             | [optimisation-handouts.pdf](handouts/optimisation-handouts.pdf)                                                                            |  [Adam: A Method for Stochastic Optimization](https://arxiv.org/abs/1412.6980)  |  [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=2c08987a-fba1-46fa-8c06-acd300c3e9aa) |
| 4    | 23-Feb | Teams | Deeper Networks: Universal approximation, overfitting and regularisation | [deepnetworks-handouts.pdf](handouts/deepnetworks-handouts.pdf)                |        [Dropout:A Simple Way to Prevent Neural Networks from Overfitting](handouts/srivastava14a.pdf) | [link]() |
|      | 25-Feb | Teams | A Biological Perspective                                                 | [biological-inspiration-handouts.pdf](handouts/biological-inspiration-handouts.pdf)              |                                         |  [link]() |
| 5    | 02-Mar | Teams | Guest Lecture - Ethan Harris - Visualising Neural Networks               | [visualisation-handouts.pdf](handouts/visualisation-handouts.pdf)| | [link]() |
|      | 04-Mar | Teams | Convolutional Networks                                                   | [Convolution-handouts.pdf](handouts/Convolution-handouts.pdf)                  | [handwritten digit recognition with a back-propagation network](https://papers.nips.cc/paper/293-handwritten-digit-recognition-with-a-back-propagation-network.pdf)                                        |  [link]() |
| 6    | 09-Mar | Teams | Networks Architectures for image classification                          | [Architectures-handouts.pdf](handouts/Architectures-handouts.pdf)                                                                              | [ImageNet Classification with Deep Convolutional Neural Networks](https://papers.nips.cc/, aper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf), [Striving for Simplicity: The All Convolutional Net](https://arxiv.org/pdf/1412.6806.pdf), [Very Deep Convolutional Networks for Large-Scale Image Recognition](https://arxiv.org/pdf/1409.1556.pdf), [Going Deeper with Convolutions](https://arxiv.org/pdf/1409.4842), [Deep Residual Learning for Image Recognition](https://arxiv.org/pdf/1512.03385.pdf) |  [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=75deb404-a8dc-4288-8e0a-ab720093d59e) |
|      | 11-Mar | Teams	| Networks Architectures for image classification (II)                     | as above                                                                               |                                         |  [link]() |
| 7    | 16-Mar | Teams | Recurrent Neural Networks                                                | [rnn-handout.pdf](handouts/rnns-handouts.pdf)    |[The Unreasonable Effectiveness of Recurrent Neural Networks](http://karpathy.github.io/2015/05/21/rnn-effectiveness/) | [link]() |
|      | 18-Mar | Teams | LSTMs and GRUs                                                           | [lstm-handout.pdf](handouts/lstm-handouts.pdf)   | [Recurrent Neural Network Regularization]() |
| 8    | 13-Apr | Teams | Embeddings                                                               | [Embeddings-handout.pdf](handouts/Embeddings-handouts.pdf)  | [Efficient Estimation of Word Representations in Vector Space](https://arxiv.org/pdf/1301.3781.pdf)                                         |  [link]() |
|      | 15-Apr | Teams | Auto-encoders and, unsupervised learning and self-supervision            | [vaes-handout.pdf](handouts/autoencoders-handouts.pdf)   |      [ Blog Post on Autoencoders](https://blog.keras.io/building-autoencoders-in-keras.html) | [link]()  |
| 9    | 20-Apr | Teams | Differentiable relaxations (sampling, etc.)                              | [relaxation-handout.pdf](handouts/relaxation-handouts.pdf) | |  [link]() |
|      | 22-Apr | Teams | Generative Models Part 1: Differentiable Generator Networks | [gans-handout.pdf](handouts/gans-handouts.pdf) | |  [link]() |
| 10   | 27-Apr | Teams | Generative Models Part 2: Variational Autoencoders | [gans-handout.pdf](handouts/gans-handouts.pdf)   | [Autoencoding Variational Bayes](https://arxiv.org/abs/1312.6114) | [link]()  |
|      | 29-Apr | Teams | Generative Models Part 3: Generative Adversarial Networks | [gans-handout.pdf](handouts/gans-handouts.pdf)   | [GANs](https://papers.nips.cc/paper/5423-generative-adversarial-nets.pdf), [DCGANs](https://arxiv.org/pdf/1511.06434.pdf) | [link]()  |
| 11   | 04-May | Teams | Guest research lecture - Sulaiman Sadiq - Neural Architecture Search     | | | |
|      | 06-May | Teams | Assorted/research topics (see below)                                              | | | |
| 12   | 11-May | Teams | Guest research lecture - TBC                                             | | | |
|      | 13-May | Teams | Assorted/research topics (see below)                                              | | | |



### Assorted topic lectures

These are bonus lectures/talks on topics that were requested by students last year that you can watch. We're going to have a longer session on NAS this year given by one of my PhD's student working in that space. If there are additional topics that you would like covered, then let us know.


| Topic | Description | Handouts/slides | Video |
|-------|-------------|----------|-------|
| Distributed Learning | How can you distribute large models and data over many machines? This is a huge topic, but I made two lectures for advanced machine learning on it (which I've also made available here in case you're not taking it) which cover the basics of both the hardware bottlenecks and the software mitigations to these bottlenecks. | [Interactive slides and handouts](https://github.com/jonhare/comp6208) | [Part&nbsp;1](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=cfdd4537-a475-4fa1-891f-ab9700ddb5af) <br/> [Part 2](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=acfc5efe-5e52-4c42-9c8c-ab9701157624) |
| Attention is (possibly) all you need | Recent trends, particularly in models for mining textual data, have used "attentional" mechanisms to get breakthrough performance and move away from recurrent networks; what is this attention and how does it work? | | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=4cc3ffd1-bd8d-4c46-b45a-abbf0126a33b) |
| Neural architecture search | A few people have asked how you design a network architecture; that's quite a difficult question as it relies on a lot of intuition (possibly with some inspiration from biology) and trial & error. There is an alternative though... Why not let the network design itself? There are a number of approaches to what is called Neural Architecture Search, but most use horribly inefficient Reinforcement Learning, so we'll just take a little look at a nifty differentiable approach called "DARTS". |       | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=d92f57a4-5211-4d14-9a79-abc00103ada5) | 
| Hardware Considerations | Deep networks typically require power-hungry hardware and lots of memory. Can you reduce the requirements and optimise for lower-powered hardware? | | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=cf3d32d1-7f66-490c-853f-abc20137ca06) |


## Labs

For 8 of the weeks (starting week 2) we are organising a 2-hour lab session in which you will need to complete a series of worksheets. The worksheets have been designed to put the theory covered in the lectures into context, and the equip you with practical skills in implementing and training differentiable programs. A team of PhD-student demonstrators will be available in the lab to help you with any questions you might have about the topics you are working on.

40% of the marks for the module are for lab work. Each of the 8 lab sessions will be accompanied by an additional assessed exercise for you to work through in your own time. You will have to work through the exercises __by yourself__ and write-up your findings. You will submit your answers/findings/working to all the assessed exercises to [handin](https://handin.ecs.soton.ac.uk/handin/2021/COMP6248/2/) in week 10 for marking (29th April, 16:00). Each of the 8 exercises will be worth 5% of your overall module mark. We recommend that you do the exercise accompanying the lab as soon as possible after the lab session, rather than leaving them all to the end.

Labs will start in the second week (11th Feb) 1-3 on Thursday afternoons. We intend to split the class into lab groups, each of which will be assigned a demonstrator, who will be available to your group for the session in a Team's side channel. The demonstrators can offer advice on both the labs as well as the group coursework, however you should not ask them about the assessed lab exercises that you complete after the lab.

The full lab schedule is below:

| Week | Date   | Location  | Topic                                                                                                 | Exercise Link                        |
|------|--------|-----------|-------------------------------------------------------------------------------------------------------|--------------------------------------|
| 1    | 04-Feb |           | NO LAB                                                                                                |                                      |
| 2    | 11-Feb | Teams     | [Introducing PyTorch](./labs/lab1/)                                                                       | [Lab 1 Exercise](./labex/lab1ex.pdf) |
| 3    | 18-Feb | Teams     | [Automatic Differentiation](./labs/lab2/)                                                                 | [Lab 2 Exercise](./labex/lab2ex.pdf) |
| 4    | 25-Feb | Teams     | [Optimisation](./labs/lab3/)                                                                              | <!--- [Lab 3 Exercise](./labex/lab3ex.pdf) --> |
| 5    | 04-Mar | Teams     | [Implementing simple Neural Networks using PyTorch and Torchbearer](./labs/lab4/)                         | <!--- [Lab 4 Exercise](./labex/lab4ex.pdf) --> |
| 6    | 11-Mar | Teams     | [Implementing and training Convolutional Neural Networks using PyTorch and Torchbearer](./labs/lab5/)     | <!--- [Lab 5 Exercise](./labex/lab5ex.pdf) --> |
| 7    | 18-Mar | Teams     | [Using pretrained models and transfer learning](./labs/lab6)                                              | <!--- [Lab 6 Exercise](./labex/lab6ex.pdf) --> |
| 8    | 15-Apr | Teams     | [Recurrent Networks, Sequence Prediction and Embeddings](./labs/lab7)                                     | <!--- [Lab 7 Exercise](./labex/lab7ex.pdf) -->|
| 9    | 22-Apr | Teams     | [Autoencoders and Deep Generative Models](./labs/lab8)                                                    | <!--- [Lab 8 Exercise](./labex/lab8ex.pdf) --> |
| 10   | 29-Apr | Teams     | Coursework Help and Advice                                                                                |                                      |
| 11   | 06-May | Teams     | Coursework Help and Advice                                                                                |                           |
| 12   | 13-May |           | NO LAB                                                                                                    |                           |

__Note: I've made all the worksheet links available from last year. Please don't be surprised if we make some updates before each session!__

## Online Quizzes

There will be two assessed online-quizzes; I'm planning for these to be on the 10th March and 5th May. These will be available on blackboard for a 24 hour period and once started you must complete them within one hour.

## Coursework assignment

Information on the coursework assignment (worth 40% of the module) is [here](coursework.html).

<!---
## Additional Lecture Notes

Additional Notes from Lectures 5 and 8 can be found [here](handouts/KateNotes.pdf)
-->

## Where to get additional help

Talk to us! You are more than welcome to arrange to meet to discuss issues related to the course during lab sessions or by appointment. The lab sessions are also facilitated by a team of our PhD students who are experts in the deep learning / differentiable programming field in their own right (many of them have published work in this space, or are close to achieving that). I can be reached by [email](mailto:jsh2@ecs.soton.ac.uk) ~~or by coming to find me in my office (32/4043)~~ or in Teams. 

