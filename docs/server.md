---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2021-22"
githubHeader: "false"
credits: Maintained by <a href="https://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> &amp; <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
---

# The COMP6248 GPU server: yann.ecs.soton.ac.uk

* We have built a GPU-server for the class to use:
	- 4x1080Ti GPUs, 128GB RAM, etc. More info: [https://sotonproduction.service-now.com/nav_to.do?uri=%2Fkb_view.do%3Fsysparm_article%3DKB0040224](https://sotonproduction.service-now.com/nav_to.do?uri=%2Fkb_view.do%3Fsysparm_article%3DKB0040224).
- Access is via `ssh` to `yann.ecs.soton.ac.uk`
	+ Your iSolutions home directory will be mounted automatically.
	+ You will need to setup your own environment:
		* Download and install [miniconda](https://conda.io/miniconda.html) in your home directory
		* Install packages using the `conda` command (and `pip` if neccessary).
- This is a shared resource - please don't hog it all to yourselves!
	+ We will be monitoring usage; this server is only to be used for running code related to this coursework.
		* Bear in mind that you have agreed to abdie by the University Computing Policy; misusing the server for things like bitcoin mining will lead to disiplinary proceedings... 
	+ Only use the resources that you need (don't block all GPU memory or use all GPUs if you don't need them).
		+ There are 4 GPUs; by default a single Tensorflow program will allocate all the available memory across all cards (stopping anyone else from using them), even though it doesn’t automatically run code on all cards. This can be fixed as follows:
			```
			import tensorflow as tf
			config = tf.ConfigProto() 
			config.gpu_options.allow_growth=True 
			sess = tf.Session(config=config)
			```
			
			And, if using Keras follow this with:
			
			```
			import keras.backend.tensorflow_backend as KTF
			KTF.set_session(sess)
			```
			+ (Note that `PyTorch` doesn't have this problem and will only use what it needs)
		+ You can force CUDA to only see particular GPUs using the `CUDA_VISIBLE_DEVICES` environment variable; for example, if you want to run on just the first GPU, then `CUDA_VISIBLE_DEVICES=0 python myprogram.py` will do the trick. If you have GPU-parallel code, then you can specify multiple GPUs by comma separating IDs: `CUDA_VISIBLE_DEVICES=1,2 python myprogram.py`
		+ You can visualize in real-time the GPU utilization by using `watch nvidia-smi`

