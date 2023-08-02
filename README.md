# deployer-cp4a-starter

Tektoncd pipeline to deploy CP4A starter for IBM TechZone Deployer (experimental)

https://www.ibm.com/docs/en/cloud-paks/cp-biz-automation/22.0.2?topic=deployment-preparing-starter(https://www.ibm.com/docs/en/cloud-paks/cp-biz-automation/22.0.2?topic=deployment-preparing-starter)

## Prerequisites

- Openshift Cluster with OpenShift Pipelines 1.8 installed

###

Find the version you would like to use by the folder name. I.E 22.0.x

oc apply -f cp4ba-pipeline.yaml to install configure service account and install tasks and pipeline
oc create -f cb4ba-pipeline-run.yaml to kick off pipeline

`oc apply -f cp4ba-pipeline.yaml && oc create -f cb4ba-pipeline-run.yaml`