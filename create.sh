#!/bin/bash

NAME=${2:mycluster-free}

# Verify that the ibmcloud cli is there
which ibmcloud > /dev/null 2>&1 || (echo "Install ibmcloud first before running this scripts: https://cloud.ibm.com/docs/cli" && exit 1)

# Make sure that ks plugin is there
ibmcloud plugin install -f kubernetes-service

# Log into the IBM Cloud
ibmcloud login --apikey $1

# Create your free cluster
ibmcloud ks cluster create classic --name ${NAME}
