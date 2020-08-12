---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2019-20"
githubHeader: "false"
credits: Maintained by <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
rdir: '../../'
---

# Deep Learning Referal Assignment: SE-ResNet

## Overview

[Squeeze and Excitation Networks](https://arxiv.org/pdf/1709.01507.pdf) proposed a simple addition to a residual connection which was shown to give state of the art performance. In this assignment you will explore if you can get a performance boost on the CIFAR-10 classification problem by using SE-blocks in your model.

## Details

The task is to compare two different network architectures on the CIFAR-10 classification problem:

	- A simple ResNet-18 network
	- The same ResNet-18, but with Squeeze and Excitation blocks added to the skip connections

You are free to determine your own training regime (optimisers, augmentation, etc.), however you should be fair in your experiments, and try not to bias the results towards one or other of the models by over-optimising the hyperparameters. You need to write a report that describes your experimental methodology and your results (e.g. classification accuracy and perhaps class confusion matrices, etc.). You should also reflect on what these results mean, and any limitations for your experiments.

### Deliverables

* **Report and accompanying code for experiments.** You must submit a report in the style of a conference paper. The paper must use the [ICLR 2019 style](https://github.com/ICLR/Master-Template/archive/ICLR2019.tar.gz), and be at most 4 pages in length, including all references and appendices (if used). 

### Mark Scheme

The report and accompanying code will be marked as a single piece of work using the following criteria:


Criterion                    | Description                                                                                | Marks
-----------------------------|--------------------------------------------------------------------------------------------|-------
Experimentation and Analysis | Development of an experimental methodology, and use of this methodology to generate results| 45
Reflection			         | Reflect on what your experimental results tell us                                          | 45
Reporting                    | Clear and professional reporting                                                           | 10


## Useful Resources

If you need computational resources:

* You can use the [ECS GPU compute service](https://sotonproduction.service-now.com/serviceportal?id=kb_article_view&sys_kb_id=31c11542dbad7b408ab945403996198d) for access to single RTX2070s overnight and at weekends.
* You have access to a GPU server with 4 GTX 1080Ti GPUs built for this module: [Usage Information](server.html) and [more info](https://sotonproduction.service-now.com/serviceportal?id=kb_article_view&sys_kb_id=d7e0bb37db4a6b008ab9454039961957)
* Google colab has GPU and TPU support in a Jupyter environment: https://colab.research.google.com
* You should be able to get $300 of Google Cloud Credits here: https://cloud.google.com/free/
