# deployer-cp4a-starter

Tektoncd pipeline to deploy CP4A starter for IBM TechZone Deployer (experimental)

https://www.ibm.com/docs/en/cloud-paks/cp-biz-automation/22.0.2?topic=deployment-preparing-starter(https://www.ibm.com/docs/en/cloud-paks/cp-biz-automation/22.0.2?topic=deployment-preparing-starter)

## Prerequisites

- Openshift Cluster with OpenShift Pipelines 1.8 installed

## Tasks

Currently uses oc client from tekton hub

## Usage
Uses sources files located in the source dir

###

oc apply -f tekton.yaml to install configure service account and install tasks and pipeline
oc create -f install-cb4ba-pipeline-run.yaml to kick off pipeline

`oc apply -f tekton.yaml && oc create -f install-cb4ba-pipeline-run.yaml`