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

As a word of warning, this is a mathematical module: the predominant focus is on looking at models that can be optimised via gradient methods. You need to have a good grasp of linear (matrix) algebra and matrix calculus, as well as the fundamentals of machine learning. You will also necessarily be comfortable with Python programming and the use of numeric/matrix libraries such as numpy or pytorch.


## Lectures and assigned reading

This year the lectures for this course will be given by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a> ([email](mailto:jsh2@ecs.soton.ac.uk)) together with a few invited speakers. Kate Farrahi and Xiaohao Cai will be helping out with the running of online lectures, the running of the labs and the coursework assignment. We have a capable team of PhD students to facilitate the lab sessions.

There will be two lectures each week. The lectures will all take place online and will be streamed live via Teams, as well as being recorded. By taking part in this module we expect you to turn up to the live sessions and get involved - asking questions and provocking discussion via the text chat is positively encouraged. By having two lecturers working together in the sessions we hope to be able to interactively respond to queries and make the sessions as interactive as possible given the circumstances.

The current working timetable/plan is below, and illustrates the topics I intend to cover, but this will evolve as the course progresses. Many of the lectures are coupled with assigned reading materials that you should read before the lecture takes place. This will broaden your understanding of the topic whilst giving you the skills required to read and understand the key points from recent research literature. The lectures are broadly broken into three groups: fundamentals (weeks 1-4), architectures/models (weeks 5-8), and advanced topics (weeks 9-12).  


| Week | Date   | Location      | Topic                                                                    | Handouts                                                                       | Reading Material                        | Lecture Video |
|------|--------|---------------|--------------------------------------------------------------------------|--------------------------------------------------------------------------------|-----------------------------------------|---------------|
| 1    | 27-Jan | Teams | Intro and background                                                     | [intro-handouts.pdf](handouts/intro-handouts.pdf)                              |                                         | [link]() |
|      | 31-Jan | Teams | Review of fundamentals                                                   | [mlreview-handouts.pdf](handouts/mlreview-handouts.pdf)                        | [CH 3 of Michael Nielsen's Book](http://neuralnetworksanddeeplearning.com/chap3.html)                                                                        | [link]() |
| 2    | 03-Feb | Teams | The Power of Differentiation                                             | [differentiate-handouts.pdf](handouts/differentiate-handouts.pdf)              |                                         |  [link]() |
|      | 07-Feb | Teams | Perceptrons, MLPs and Backpropagation                                    | [backprop-handouts.pdf](handouts/backprop-handouts.pdf)                        | [Learning representations by back-propagating errors](handouts/nature_article.pdf)                    |  [link]() |
| 3    | 10-Feb | Teams | Automatic Differentiation                                                | [autograd-handouts.pdf](handouts/autograd-handouts.pdf)                        | [Automatic differentiation in PyTorch](https://openreview.net/pdf?id=BJJsrmfCZ) |  [link]() |
|      | 12-Feb | Teams | Optimisation                                                             | [optimisation-handouts.pdf](handouts/optimisation-handouts.pdf)                                                                            |  [Adam: A Method for Stochastic Optimization](https://arxiv.org/abs/1412.6980)  |  [link]() |
| 4    | 17-Feb | Teams | Deeper Networks: Universal approximation, overfitting and regularisation | [deepnetworks-handouts.pdf](handouts/deepnetworks-handouts.pdf)                |        [Dropout:A Simple Way to Prevent Neural Networks from Overfitting](handouts/srivastava14a.pdf) | [link]() |
|      | 28-Feb | Teams | A Biological Perspective                                                 | [biological-inspiration-handouts.pdf](handouts/biological-inspiration-handouts.pdf)              |                                         |  [link]() |
| 5    | 24-Feb | Teams | Guest Lecture - Ethan Harris - Visualising Neural Networks               | [visualisation-handouts.pdf](handouts/visualisation-handouts.pdf)| | [link]() |
|      | 19-Feb | Teams | Convolutional Networks                                                   | [Convolution-handouts.pdf](handouts/Convolution-handouts.pdf)                  | [handwritten digit recognition with a back-propagation network](https://papers.nips.cc/paper/293-handwritten-digit-recognition-with-a-back-propagation-network.pdf)                                        |  [link]() |
| 6    | 02-Mar | Teams | Networks Architectures for image classification                          | [Architectures-handouts.pdf](handouts/Architectures-handouts.pdf)                                                                              | [ImageNet Classification with Deep Convolutional Neural Networks](https://papers.nips.cc/, aper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf), [Striving for Simplicity: The All Convolutional Net](https://arxiv.org/pdf/1412.6806.pdf), [Very Deep Convolutional Networks for Large-Scale Image Recognition](https://arxiv.org/pdf/1409.1556.pdf), [Going Deeper with Convolutions](https://arxiv.org/pdf/1409.4842), [Deep Residual Learning for Image Recognition](https://arxiv.org/pdf/1512.03385.pdf) |  [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=75deb404-a8dc-4288-8e0a-ab720093d59e) |
|      | 06-Mar | Teams	| Networks Architectures for image classification (II)                     | as above                                                                               |                                         |  [link]() |
| 7    | 09-Mar | Teams | Recurrent Neural Networks                                                | [rnn-handout.pdf](handouts/rnns-handouts.pdf)    |[The Unreasonable Effectiveness of Recurrent Neural Networks](http://karpathy.github.io/2015/05/21/rnn-effectiveness/) | [link]() |
|      | 13-Mar | Teams | LSTMs and GRUs                                                           | [lstm-handout.pdf](handouts/lstm-handouts.pdf)   | [Recurrent Neural Network Regularization]() |
| 8    | ~~16-Mar~~ | Teams  | Embeddings                                                               | [Embeddings-handout.pdf](handouts/Embeddings-handouts.pdf)  | [Efficient Estimation of Word Representations in Vector Space](https://arxiv.org/pdf/1301.3781.pdf)                                         |  [link]() |
|      | ~~20-Mar~~ | Teams | Auto-encoders and, unsupervised learning and self-supervision            | [vaes-handout.pdf](handouts/autoencoders-handouts.pdf)   |      [ Blog Post on Autoencoders](https://blog.keras.io/building-autoencoders-in-keras.html) | [link]()  |
| 9    | ~~20-Apr~~ | Teams | Differentiable relaxations (sampling, etc.)                              | [relaxation-handout.pdf](handouts/relaxation-handouts.pdf) | |  [link]() |
|      | ~~24-Apr~~ | Teams | Generative Models Part 1: Differentiable Generator Networks | [gans-handout.pdf](handouts/gans-handouts.pdf) | |  [link]() |
|      | ~~24-Apr~~ | Teams | Generative Models Part 2: Variational Autoencoders | [gans-handout.pdf](handouts/gans-handouts.pdf)   | [Autoencoding Variational Bayes](https://arxiv.org/abs/1312.6114) | [link]()  |
|      | ~~24-Apr~~ | Teams | Generative Models Part 3: Generative Adversarial Networks | [gans-handout.pdf](handouts/gans-handouts.pdf)   | [GANs](https://papers.nips.cc/paper/5423-generative-adversarial-nets.pdf), [DCGANs](https://arxiv.org/pdf/1511.06434.pdf) | [link]()  |
| 10   | ~~27-Apr~~ | Teams | Assorted topics (see below)                                              | | | |
|      | ~~01-May~~ | Teams | Assorted topics (see below)                                              | | | |
| 11   | ~~04-May~~ | Teams | Guest research lecture - TBC                                             | | | |
|      | ~~06-May~~ | Teams | ~~Guest research lecture~~                                               | | | |
| 12   | ~~15-May~~ | Teams | ~~Wrap-up lecture~~                                                      | | | |
|      | ~~17-May~~ | Teams |                                                                          | | | |


### Assorted topic lectures

These are bonus lectures/talks on topics that were requested by students last year. We're going to have a longer session on NAS this year given by one of my PhD's student working in that space. If there are additional topics that you would like covered, then let us know.


| Topic | Description | Handouts/slides | Video |
|-------|-------------|----------|-------|
| Distributed Learning | How can you distribute large models and data over many machines? This is a huge topic, but I made two lectures for advanced machine learning on it (which I've also made available here in case you're not taking it) which cover the basics of both the hardware bottlenecks and the software mitigations to these bottlenecks. | [Interactive slides and handouts](https://github.com/jonhare/comp6208) | [Part&nbsp;1](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=cfdd4537-a475-4fa1-891f-ab9700ddb5af) <br/> [Part 2](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=acfc5efe-5e52-4c42-9c8c-ab9701157624) |
| Attention is (possibly) all you need | Recent trends, particularly in models for mining textual data, have used "attentional" mechanisms to get breakthrough performance and move away from recurrent networks; what is this attention and how does it work? | | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=4cc3ffd1-bd8d-4c46-b45a-abbf0126a33b) |
| Neural architecture search | A few people have asked how you design a network architecture; that's quite a difficult question as it relies on a lot of intuition (possibly with some inspiration from biology) and trial & error. There is an alternative though... Why not let the network design itself? There are a number of approaches to what is called Neural Architecture Search, but most use horribly inefficient Reinforcement Learning, so we'll just take a little look at a nifty differentiable approach called "DARTS". |       | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=d92f57a4-5211-4d14-9a79-abc00103ada5) | 
| Hardware Considerations | Deep networks typically require power-hungry hardware and lots of memory. Can you reduce the requirements and optimise for lower-powered hardware? | | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=cf3d32d1-7f66-490c-853f-abc20137ca06) |


## Labs

For 8 of the weeks we are organising a 2-hour lab session in which you will need to complete a series of worksheets. The worksheets have been designed to put the theory covered in the lectures into context, and the equip you with practical skills in implementing and training differentiable programs. A team of PhD-student demonstrators will be available in the lab to help you with any questions you might have about the topics you are working on.

40% of the marks for the module are for lab work. Each of the 8 lab sessions will be accompanied by an additional assessed exercise for you to work through in your own time. You will have to work through the exercises __by yourself__ and write-up your findings. You will submit your answers/findings/working to all the assessed exercises to [handin](https://handin.ecs.soton.ac.uk/handin/1920/COMP6248/3/) in week 11 for marking (~~6th May, 16:00~~ 20th May, 16:00). Each of the 8 exercises will be worth 5% of your overall module mark. We recommend that you do the exercise accompanying the lab as soon as possible after the lab session, rather than leaving them all to the end.

Labs will start in the second week (5th Feb) 9-11 on Wednesday mornings in Zepler Level 2. The full lab schedule is below:

| Week | Date   | Location  | Topic                                                                                                 | Exercise Link                        |
|------|--------|-----------|-------------------------------------------------------------------------------------------------------|--------------------------------------|
| 1    | 29-Jan |           | NO LAB                                                                                                |                                      |
| 2    | 05-Feb | Zepler L2 | [Introducing PyTorch](./labs/lab1/)                                                                   | <!--- [Lab 1 Exercise](./labex/lab1ex.pdf) --> |
| 3    | 12-Feb | Zepler L2 | [Automatic Differentiation](./labs/lab2/)                                                             | <!--- [Lab 2 Exercise](./labex/lab2ex.pdf) --> |
| 4    | 19-Feb | Zepler L2 | [Optimisation](./labs/lab3/)                                                                          | <!--- [Lab 3 Exercise](./labex/lab3ex.pdf) --> |
| 5    | 26-Feb | Zepler L2 | [Implementing simple Neural Networks using PyTorch and Torchbearer](./labs/lab4/)                     | <!--- [Lab 4 Exercise](./labex/lab4ex.pdf) --> |
| 6    | 04-Mar |           | _No Lab_                                                                                              |                                      |
| 7    | 11-Mar | Zepler L2 | [Implementing and training Convolutional Neural Networks using PyTorch and Torchbearer](./labs/lab5/) | <!--- [Lab 5 Exercise](./labex/lab5ex.pdf) --> |
| 8    | ~~18-Mar~~ 29-Apr | ~~Zepler L2~~ Teams | [Using pretrained models and transfer learning](./labs/lab6)                                          | <!--- [Lab 6 Exercise](./labex/lab6ex.pdf) --> |
| 9    | ~~22-Apr~~ 06-May | ~~Zepler L2~~ Teams | [Recurrent Networks, Sequence Prediction and Embeddings](./labs/lab7)                                 | <!--- [Lab 7 Exercise](./labex/lab7ex.pdf) -->|
| 10   | ~~29-Apr~~ 13-May | ~~Zepler L2~~ Teams | [Autoencoders and Deep Generative Models](./labs/lab8)                                                | <!--- [Lab 8 Exercise](./labex/lab8ex.pdf) --> |
| 11   | ~~06-May~~ 20-May | ~~Zepler L2~~ Teams | Coursework Help and Advice                                                                            |                                      |
| 12   | ~~13-May~~ | ~~Zepler L2~~ | ~~Coursework Help and Advice~~                                                                            |                           |

__Note: I've made all the worksheet links available from last year. Please don't be surprised if we make some updates before each session!__

## Online Quizzes

There will be two assessed online-quizzes; I'm planning for these to be on the XXX and XXX. These will be available on blackboard.

## Coursework assignment

Information on the coursework assignment (worth 40% of the module) is [here](coursework.html).

<!---
## Additional Lecture Notes

Additional Notes from Lectures 5 and 8 can be found [here](handouts/KateNotes.pdf)
-->

## Where to get additional help

Talk to us! You are more than welcome to arrange to meet to discuss issues related to the course during lab sessions or by appointment. The lab sessions are also facilitated by a team of our PhD students who are experts in the deep learning / differentiable programming field in their own right (many of them have published work in this space, or are close to achieving that). I can be reached by [email](mailto:jsh2@ecs.soton.ac.uk) ~~or by coming to find me in my office (32/4043)~~ or in Teams. 

