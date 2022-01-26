---
layout: index
title: "COMP6248 Differentiable Programming (and Deep Learning)"
subtitle: "2021-22"
githubHeader: "false"
credits: Maintained by <a href="https://www.ecs.soton.ac.uk/people/kf2u17">Dr Kate Farrahi</a> &amp; <a href="http://www.ecs.soton.ac.uk/people/jsh2">Dr Jonathon Hare</a>.
rdir: '../../'
---

# Deep Learning Coursework: The COMP6248 Reproducibility Challenge

## Brief
Effort: ~60 hours per student  
Credit: 40% of overall module mark  
Team size: 3-4 students.

### Handin #1
Due date: Friday 4th March 2022, 16:00.  
Handin: [2021/COMP6248/1/](https://handin.ecs.soton.ac.uk/handin/2021/COMP6248/1/)  
Required files: team.txt

### Handin #2
Due date: Friday 13th May 2022, 16:00.  
Handin: [2021/COMP6248/3/](https://handin.ecs.soton.ac.uk/handin/2021/COMP6248/3/)  
Required files: paper.pdf; mark_split.pdf; team.txt

## Overview
For the last few years the International Conference on Representation Learning (ICLR; pronounced "i-clear") has run a challenge encourgaging researchers to try to reproduce the work presented in papers submitted to the conference. The motivation for this has been as a way of trying to address a larger problem surrounding the lack of reproducability of published results in AI papers. This coursework takes direct inspiration from this challenge.

In this coursework you will form a team and choose a paper submitted to one of the ICLR 2021-2020, or NeurIPS 2021-2020 conferences. You will attempt to reproduce the results of your chosen paper and report back on your findings. 

## Details
Students will form groups of three members. I've made a page on the student wiki to help you form teams: https://secure.ecs.soton.ac.uk/student/wiki/w/COMP6248-2021-classlist and setup a channel in Teams where you can talk to others in the class about finding a team.

Each group will propose a paper to reproduce. All papers submitted to ICLR are publically available on the Open Review website (https://openreview.net/group?id=ICLR.cc) together with their reviews. You can pick a paper that was accepted, or one that was not. The lab demonstrators and lecturers can offer advice on good and bad papers to try. You will need to be careful that you do not pick a paper that requires insane amounts of computation power (some of the papers claim experiments using hundreds of GPUs!). In some cases, the paper you pick might include experiments that require more resources than you have available, however in such cases it is fine to try to reproduce constrained or reduced versions of the experiments (e.g. with lower dimensional inputs, smaller datasets or less layers).

With your selected paper you should aim to replicate the experiments described in the paper. The goal is to assess if the experiments are reproducible, and to determine if the conclusions of the paper are supported by your findings. Your results can be either positive (i.e. confirm reproducibility), or negative (i.e. explain what you were unable to reproduce, and potentially explain why).

Essentially, think of your role as an inspector verifying the validity of the experimental results and conclusions of the paper. Your findings (including any code that you write) will be made publically available in a repository in the "COMP6248 Reproducability Challenge" Github organisation (https://github.com/organizations/COMP6248-Reproducability-Challenge), and will serve as a useful resource for others in the future.

You do not need to reproduce all experiments in your selected paper, for example the authors may experiment with a new method that requires more GPUs than you have access to, but also present results for a baseline method (e.g. simple logistic regression), in which case you could elect to reproduce only the baseline results. It is sometimes the case that baseline methods are not properly implemented, or hyper-parameter search is not done with the same degree of attention.

If available, the authors’ code can be used (authors of ICLR submissions are encouraged to release their code when they submit their work for review). The methods described can also be implemented/re-implemented according to the description in the paper. This is a higher bar for reproducibility, but may be helpful in detecting anomalies in the code, or shedding light on aspects of the implementation that affect results. Note that if you do use the authors' code alone we will expect a significant amount of analysis and experimentation, whereas if you make your own implementation you would be expected to do less analysis and experimentation.

### Deliverables

There are two deliverables for this coursework:

* **Team Information.** Teams must submit a text document detailing the chosen paper and the formation of the team to ECS handin by **Friday 4th March**. Please use the following template: [team.txt](team.txt).
* **Reproducibility report and accompanying github repository with code for experiments.** Teams must submit a reproducibility report in the style of a conference paper by **16:00 on Friday 13th May** to ECS Handin. The paper must use the [ICLR 2019 style](https://github.com/ICLR/Master-Template/archive/ICLR2019.tar.gz), and be at most 4 pages in length, including all references and appendices (if used). The submitted paper should clearly indicate the Github repository in the "COMP6248 Reproducability Challenge" organisation that accompanies the paper, which should contain the code used for the experiments in the report. Additionally, each team is required to submit a proposed marks distribution form (see below) and a plain text file listing the user ids (e.g. xx1g15) of the members of your team; one per line.
	- A good reproducibility report, describes the target questions, the experimental methodology, the implementation details, provides analysis and, discusses findings and conclusions on the reproducibility of the paper. The result of the reproducibility study should NOT be a simple Pass / Fail outcome. The goal should be to identify which parts of the contribution can be reproduced, and at what cost in terms of resources (computation, time, people, development effort, etc). Other than briefly outlining the core ideas or approach of the original paper, there is no need to repeat information.
	- Ideally you should include a copy of your report in your git repository as this will serve as a useful guide for others.
	- You should make it clear to what extent you used existing code (e.g. that of the authors' of your chosen paper) compared to your own code.

### Notes

* Speak to one of the demonstrators or staff members in a lab session to get a Github repository in the "COMP6248 Reproducability Challenge" organisation created for your team; alternatively you can create a repository in your own account, and transfer ownership to the "COMP6248 Reproducability Challenge" organisation.
* ECS Handin wasn't really designed with group submissions in mind; **each team should nominate a team leader to make the submission on behalf of their team**. The other team members will see that handin says that their submission is overdue, however this can be safely ignored.

## Marking and Feedback

Each team will receive an overall mark (broken down into sub-categories). Individual marks will be assigned based on a split decided by the team. Full details below:

### Learning Outcomes

This assigment should allow you to demonstrate knowledge and understanding of:
 	- Using deep learning libraries in order to create and evaluate network architectures.
  	- Critical appraisal of recent scientific literature in deep learning.

### Mark Scheme

The conference paper and accompanying material will be marked as a single piece of work using the following criteria:


Criterion                    | Description                                                                                | Marks
-----------------------------|--------------------------------------------------------------------------------------------|-------
Experimentation and Analysis | Analysis of the chosen paper, development of an approach reproduce the findings, and use of this approach to generate results | 45
Reflection			         | Reflect on what your experimental results tell us in relation to those in the paper you are reproducing | 45
Reporting                    | Clear and professional reporting                                                           | 10

Standard ECS late submission penalties apply.

Written group feedback will be given covering the above points, and will be emailed out once marking is complete.

### Marks split
Team members should agree between themselves as to how the marks awarded for the team submission will be divided between the team members (see below for instructions on how to proceed if this is not possible). The Team Leader should print out the form [here](marks_split.pdf), complete it as agreed and arrange for every member of the team to sign and date it. The completed signed form must be submitted via the ECS Handin system with the conference paper. **An incomplete form (e.g. with missing signatures) means that the entire ECS Handin submission is incomplete and therefore subject to penalties.**

**Teams are encouraged to split the work evenly between all team members (in which case the marks split evenly)**. They are advised to consider any proposed non-uniform distribution very carefully before submission. Note that an individual contribution of zero is acceptable and will result in that team member being effectively removed from the team. One or more individual contributions of 10% or less may result in an ad-hoc reduction in the effective team size. Any proposed non-uniform distribution will be discussed with the team after submission and may be subject to modification by the Module Leader at that stage.

#### 'Failure to Agree'
Teams are advised to make every effort to agree on the marks distribution because failure to agree will be interpreted as demonstrating a general lack of competence. However, the procedure to follow if there is no agreement is set out below:

The team should divide into two or more subteams (in the worst case, a team of size 'N' could have 'N' subteams). Each team should elect a subteam leader, who should make a full submission as detailed above. Each marks distribution form submitted should indicate proposed percentages of the overall team marks to be allocated to the members of that subteam, with a written one-page explanation of why such an allocation would be appropriate. It should be noted that any attempt by a team member to exploit the advice above (that teams should make every effort to agree) by, for example, refusing to sign the marks distribution form will not be successful (in the unlikely event that this happens, each individual should make a brief signed statement as to the facts of the case and submit this with the other documentation).

The final marks breakdown for a team that fails to agree will be determined by the Module Leader, taking all relevant factors into account. This decision will be final.  

## Useful Resources
If you need computational resources:

* You can use the [ECS GPU compute service](https://sotonproduction.service-now.com/serviceportal?id=kb_article_view&sys_kb_id=31c11542dbad7b408ab945403996198d) for access to single RTX2070s.
* You have access to a GPU server with 4 GTX 1080Ti GPUs built for this module: [Usage Information](server.html) and [more info](https://sotonproduction.service-now.com/serviceportal?id=kb_article_view&sys_kb_id=d7e0bb37db4a6b008ab9454039961957)
* For really big models you can access ECS Alpha (time-share access to a 48GB RTX8000 GPU on Iridis)
* Google colab has GPU and TPU support in a Jupyter environment: https://colab.research.google.com
* You should be able to get $300 of Google Cloud Credits here: https://cloud.google.com/free/

## Questions
If you have any problems/questions then [email](mailto:jsh2@ecs.soton.ac.uk) or speak to [Jon](http://ecs.soton.ac.uk/people/jsh2).
