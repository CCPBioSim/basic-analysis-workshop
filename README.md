# CCPBioSim Basic Analysis Workshop

[![build](https://github.com/ccpbiosim/basic-analysis-workshop/actions/workflows/build.yaml/badge.svg?branch=main)](https://github.com/ccpbiosim/basic-analysis-workshop/actions/workflows/build.yaml)

## Docker 

This container is derived from the CCPBioSim JupyterHub image. This container
adds the necessary software packages and notebook content to form a deployable
course container. The source content for this course can be found at
https://github.com/CCPBioSim/basic-analysis-workshop

## How to Use

In our containers we are using the JupyterHub default port 8888, so you should
forward this port when deploying locally::

    docker run -p 8888:8888 ghcr.io/jimboid/biosim-basic-analysis-workshop:latest

## Contact
Please direct all questions and feedback to [Charlie Laughton](mailto:charles.laughton@nottingham.ac.uk)
