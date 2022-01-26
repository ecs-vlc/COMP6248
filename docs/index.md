---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2021-22"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare & Dr Kate Farrahi</a>.
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

This year the lectures for this course will be given by <a href="http://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> ([email](mailto:kf2u17@ecs.soton.ac.uk)) and <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a> ([email](mailto:jsh2@ecs.soton.ac.uk)). We have a capable team of PhD students to facilitate the lab sessions.

There will be two lectures each week, one on Mondays at 3pm, and the other on Thursdays at 2pm. The lectures will all take place in person, though the labs will take place virtually over Teams. 

By taking part in this module we _expect_ you to turn up to the lectures and get involved - asking questions and provocking discussion is positively encouraged.

The current working timetable/plan is below, and illustrates the topics we intend to cover, but this will evolve as the course progresses. Many of the lectures are coupled with assigned reading materials that you should read before the lecture takes place. This will broaden your understanding of the topic whilst giving you the skills required to read and understand the key points from recent research literature. The lectures are broadly broken into three groups: fundamentals (weeks 1-4), architectures/models (weeks 5-8), and advanced topics (weeks 9-12).  


| Week | Date   | Location      | Topic                                                                    | Handouts                                                                       | Reading Material                        | Lecture Video |
|------|--------|---------------|--------------------------------------------------------------------------|--------------------------------------------------------------------------------|-----------------------------------------|---------------|
| 1    | 31-Jan  | 54-4011 | Intro and background                                                     | [intro-handouts.pdf](handouts/intro-handouts.pdf)                              |                                         |  |
|      | 03-Feb | 7-3009 | Review of fundamentals                                                   |                        | [CH 3 of Michael Nielsen's Book](http://neuralnetworksanddeeplearning.com/chap3.html)                                                                        |  |
| 2    | 07-Feb | 54-4011 | The Power of Differentiation                                             | {% comment %} [differentiate-handouts.pdf](handouts/differentiate-handouts.pdf)  {% endcomment %}            |                                         |   |
|      | 10-Feb | 7-3009 | Optimisation                                   | {% comment %} [optimisation-handouts.pdf](handouts/optimisation-handouts.pdf) {% endcomment %}                        | [Adam: A Method for Stochastic Optimization](https://arxiv.org/abs/1412.6980)                   |    |
| 3    | 14-Feb | 54-4011 | Backpropagation                                                             | {% comment %} [backprop-handouts.pdf](handouts/backprop-handouts.pdf)   {% endcomment %}                                                                             |  [Learning representations by back-propagating errors](handouts/nature_article.pdf)   |  |
|      | 17-Feb | 7-3009 | Automatic Differentiation                                                | {% comment %} [autograd-handouts.pdf](handouts/autograd-handouts.pdf)  {% endcomment %}                      | [Automatic differentiation in PyTorch](https://openreview.net/pdf?id=BJJsrmfCZ) | |
| 4    | 21-Feb | 54-4011 | Deeper Networks: Universal approximation, overfitting and regularisation | {% comment %} [deepnetworks-handouts.pdf](handouts/deepnetworks-handouts.pdf)  {% endcomment %}              |        [Dropout:A Simple Way to Prevent Neural Networks from Overfitting](handouts/srivastava14a.pdf) | |
|      | 24-Feb | 7-3009 | Embeddings                                                               | {% comment %} [Embeddings-handout.pdf](handouts/Embeddings-handouts.pdf) {% endcomment %} | [Efficient Estimation of Word Representations in Vector Space](https://arxiv.org/pdf/1301.3781.pdf)    |  |
| 5    | 28-Feb | 54-4011 | A Biological Perspective                                                 | {% comment %} [biological-inspiration-handouts.pdf](handouts/biological-inspiration-handouts.pdf)   {% endcomment %}           | [How Convolutional Neural Network Architecture Biases Learned Opponency and Color Tuning](https://www.mitpressjournals.org/doi/pdf/10.1162/neco_a_01356) |   |
|      | 03-Mar | 7-3009 | Convolutional Networks      | {% comment %} [Convolution-handouts.pdf](handouts/Convolution-handouts.pdf){% endcomment %}                  | [handwritten digit recognition with a back-propagation network](https://papers.nips.cc/paper/293-handwritten-digit-recognition-with-a-back-propagation-network.pdf)                                        |   |
| 6    | 07-Mar | 54-4011 | Networks Architectures for image classification           | {% comment %} [Architectures-handouts.pdf](handouts/Architectures-handouts.pdf) {% endcomment %}                                                                             | [ImageNet Classification with Deep Convolutional Neural Networks](https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf), [Striving for Simplicity: The All Convolutional Net](https://arxiv.org/pdf/1412.6806.pdf), [Very Deep Convolutional Networks for Large-Scale Image Recognition](https://arxiv.org/pdf/1409.1556.pdf), [Going Deeper with Convolutions](https://arxiv.org/pdf/1409.4842), [Deep Residual Learning for Image Recognition](https://arxiv.org/pdf/1512.03385.pdf) |   |
|      | 10-Mar | 7-3009	| Networks Architectures for image classification (II)                     | as above                            |       |   |
| 7    | 14-Mar | 54-4011 | Recurrent Neural Networks                                                | {% comment %} [rnn-handout.pdf](handouts/rnns-handouts.pdf)    |[The Unreasonable Effectiveness of Recurrent Neural Networks](http://karpathy.github.io/2015/05/21/rnn-effectiveness/) {% endcomment %}|  |
|      | 17-Mar | 7-3009 | LSTMs and GRUs    | {% comment %} [lstm-handout.pdf](handouts/lstm-handouts.pdf) {% endcomment %}  | [Recurrent Neural Network Regularization](https://arxiv.org/pdf/1409.2329.pdf) |   |	
| 8    | 21-Mar | 54-4011 | Auto-encoders and, unsupervised learning and self-supervision            | {% comment %} [vaes-handout.pdf](handouts/autoencoders-handouts.pdf) {% endcomment %}  |      [ Blog Post on Autoencoders](https://blog.keras.io/building-autoencoders-in-keras.html) |   |
|      | 24-Mar | 7-3009 | Attention            | |       |   |
| 9    | 25-Apr | 54-4011 | Differentiable relaxations (sampling, etc.)                              | {% comment %} [relaxation-handout.pdf](handouts/relaxation-handouts.pdf){% endcomment %} | |       |   |
|      | 28-Apr | 7-3009 | Generative Models Part 1: Differentiable Generator Networks | {% comment %} [gans-handout.pdf](handouts/gans-handouts.pdf) {% endcomment %}| |       |   | 
| 10   | 02-May | 54-4011 | Generative Models Part 2: Variational Autoencoders | {% comment %} [gans-handout.pdf](handouts/gans-handouts.pdf) {% endcomment %}  | [Autoencoding Variational Bayes](https://arxiv.org/abs/1312.6114) |   |
|      | 05-May | 7-3009 | Generative Models Part 3: Generative Adversarial Networks | {% comment %} [gans-handout.pdf](handouts/gans-handouts.pdf)  {% endcomment %} | [GANs](https://papers.nips.cc/paper/5423-generative-adversarial-nets.pdf), [DCGANs](https://arxiv.org/pdf/1511.06434.pdf) |  |
| 11   | 09-May | 54-4011 | Guest research lecture - TBC     | | | |
|      | 12-May | 7-3009 | Assorted/research topics (see below)                                              | | | |
| 12   | 16-May | 54-4011 | Guest research lecture - TBC                                             | | | |
|      | 19-May | 7-3009 | Assorted/research topics (see below)                                              | | | |



### Assorted topic lectures

These are bonus lectures/talks on topics that were requested by students in previous years that you can watch. If there are additional topics that you would like covered, then let us know.


| Topic | Description | Handouts/slides | Video |
|-------|-------------|----------|-------|
| Distributed Learning | How can you distribute large models and data over many machines? This is a huge topic, but I made two lectures for advanced machine learning on it (which I've also made available here in case you're not taking it) which cover the basics of both the hardware bottlenecks and the software mitigations to these bottlenecks. | [Interactive slides and handouts](https://github.com/jonhare/comp6208) | [Part&nbsp;1](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=cfdd4537-a475-4fa1-891f-ab9700ddb5af) <br/> [Part 2](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=acfc5efe-5e52-4c42-9c8c-ab9701157624) |
| Attention is (possibly) all you need | Recent trends, particularly in models for mining textual data, have used "attentional" mechanisms to get breakthrough performance and move away from recurrent networks; what is this attention and how does it work? | | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=4cc3ffd1-bd8d-4c46-b45a-abbf0126a33b) |
| Neural architecture search | A few people have asked how you design a network architecture; that's quite a difficult question as it relies on a lot of intuition (possibly with some inspiration from biology) and trial & error. There is an alternative though... Why not let the network design itself? There are a number of approaches to what is called Neural Architecture Search, but most use horribly inefficient Reinforcement Learning, so we'll just take a little look at a nifty differentiable approach called "DARTS". |       | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=d92f57a4-5211-4d14-9a79-abc00103ada5) | 
| Hardware Considerations | Deep networks typically require power-hungry hardware and lots of memory. Can you reduce the requirements and optimise for lower-powered hardware? | | [link](https://southampton.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=cf3d32d1-7f66-490c-853f-abc20137ca06) |


## Labs

For 8 of the weeks (starting week 2) we are organising a 2-hour lab session in which you will need to complete a series of worksheets. The worksheets have been designed to put the theory covered in the lectures into context, and the equip you with practical skills in implementing and training differentiable programs. A team of PhD-student demonstrators will be available in the lab to help you with any questions you might have about the topics you are working on.

40% of the marks for the module are for lab work. Each of the 8 lab sessions will be accompanied by an additional assessed exercise for you to work through in your own time. You will have to work through the exercises __by yourself__ and write-up your findings. You will submit your answers/findings/working to all the assessed exercises to [handin](https://handin.ecs.soton.ac.uk/handin/2022/COMP6248/2/) in week 10 for marking (6th May, 16:00). Each of the 8 exercises will be worth 5% of your overall module mark. We recommend that you do the exercise accompanying the lab as soon as possible after the lab session, rather than leaving them all to the end.

Labs will start in the second week (11th Feb) 9-11 on Friday mornings. We intend to split the class into lab groups, each of which will be assigned a demonstrator, who will be available to your group for the session in a Team's side channel. The demonstrators can offer advice on both the labs as well as the group coursework, however you should not ask them about the assessed lab exercises that you complete after the lab.

The full lab schedule is below:

| Week | Date   | Location  | Topic                                                                                                 | Exercise Link                        |
|------|--------|-----------|-------------------------------------------------------------------------------------------------------|--------------------------------------|
| 1    | 4-Feb |           | NO LAB                                                                                                |                                      |
| 2    | 11-Feb | Teams     | [Introducing PyTorch](./labs/lab1/)                                                                       | [Lab 1 Exercise](./labex/lab1ex.pdf) |
| 3    | 18-Feb | Teams     | [Automatic Differentiation](./labs/lab2/)                                                                 | [Lab 2 Exercise](./labex/lab2ex.pdf) |
| 4    | 25-Feb | Teams     | [Optimisation](./labs/lab3/)                                                                              | [Lab 3 Exercise](./labex/lab3ex.pdf) |
| 5    | 04-Mar | Teams     | [Implementing simple Neural Networks using PyTorch and Torchbearer](./labs/lab4/)                         | [Lab 4 Exercise](./labex/lab4ex.pdf) |
| 6    | 11-Mar | Teams     | [Implementing and training Convolutional Neural Networks using PyTorch and Torchbearer](./labs/lab5/)     | [Lab 5 Exercise](./labex/lab5ex.pdf) |
| 7    | 18-Mar | Teams     | [Using pretrained models and transfer learning](./labs/lab6)                                              | [Lab 6 Exercise](./labex/lab6ex.pdf) |
| 8    | 15-Apr | Teams     | [Recurrent Networks, Sequence Prediction and Embeddings](./labs/lab7)                                     | [Lab 7 Exercise](./labex/lab7ex.pdf)|
| 9    | 22-Apr | Teams     | [Autoencoders and Deep Generative Models](./labs/lab8)                                                    | [Lab 8 Exercise](./labex/lab8ex.pdf) |
| 10   | 29-Apr | Teams     | Coursework Help and Advice                                                                                |                                      |
| 11   | 06-May | Teams     | Coursework Help and Advice                                                                                |                           |
| 12   | 13-May |           | NO LAB                                                                                                    |                           |

__Note: I've made all the worksheet links available from last year. Please don't be surprised if we make some updates before each session!__

## Online Quizzes

There will be two assessed online-quizzes; We are planning for these to be on the 9th March and 11th May. These will be available on blackboard for a 24 hour period and once started you must complete them within one hour.

## Coursework assignment
Information on the coursework assignment will be uploaded soon.
{% comment %}
Information on the coursework assignment (worth 40% of the module) is [here](coursework.html).
{% endcomment %}

{% comment %}
<!---
## Additional Lecture Notes

Additional Notes from Lectures 5 and 8 can be found [here](handouts/KateNotes.pdf)
-->
{% endcomment %}

## Where to get additional help

Talk to us! You are more than welcome to arrange to meet to discuss issues related to the course during lab sessions or by appointment. The lab sessions are also facilitated by a team of our PhD students who are experts in the deep learning / differentiable programming field in their own right (many of them have published work in this space, or are close to achieving that). We can be reached by [Kate's email](mailto:kf2u17@ecs.soton.ac.uk) or [Jon's email](mailto:jsh2@ecs.soton.ac.uk)

