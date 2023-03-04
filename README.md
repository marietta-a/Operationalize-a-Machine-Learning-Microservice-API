## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks
Your project goal is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. In this project you will:

Test your project code using linting
Complete a Dockerfile to containerize this application
Deploy your containerized application using Docker and make a prediction
Improve the log statements in the source code for this application
Configure Kubernetes and create a Kubernetes cluster
Deploy a container using Kubernetes and make a prediction
Upload a complete Github repo with CircleCI to indicate that your code has been tested

---

###  Setting up virtual environment
#### Installation, skip this step if you already have python installed
[Download and install the python](https://www.python.org/downloads/). 
#### Setting up virtual environmentx
1. Create a virtual environment
``source ~/.devops/bin/activate``
2. Activating virtural environment
``python3 -m venv ~/.devops``


cd into _**project-ml-microservice-kubernetes**_ directory and proceed with the following instructions
####  Installing dependencies
``make install``
#### Linting
make lint

### Running app.py
#### 1. Standalone
 ``python app.py``
#### 2. Run in docker
 `` ./run_docker.sh ``
#### 3. Run in kubernetes
 - ensure you have a virtual machine and *minikube* installedr
 - start a local cluster by running the command ``minikube start``
 - finally, run ``./run_kubernetes.sh`` to run app in kubernetes
 

### Folder directory
All important files for the project are located in **project-ml-microservice-kubernetes** root directory
####  Output from running the app in various environments are found in _output_txt_files_
1. Output from running in **docker** is found in `docker_out`
2. Output from running in **kubernetes** is found in `kubernetes_out`

### Status Badge
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/marietta-a/Operationalize-a-Machine-Learning-Microservice-API/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/marietta-a/Operationalize-a-Machine-Learning-Microservice-API/tree/master)
