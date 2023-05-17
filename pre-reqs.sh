#!/bin/bash

output=$(tkn hub search openshift-client)

# Check if the output contains the keyword 'No plugins found'
if [[ $output == *"No plugins found"* ]]; then
    tkn hub install task openshift-client
else
    echo "openshift-client is already installed"
fi

if [[ $(oc get clusterrolebinding | grep -c "pipeline-clusteradmin-cr") ]]; then
    echo 'clusterrolebindings.rbac.authorization.k8s.io "pipeline-clusteradmin-crb" already exists'
else
    oc create clusterrolebinding pipeline-clusteradmin-crb --clusterrole=cluster-admin --serviceaccount=default:pipeline
fi