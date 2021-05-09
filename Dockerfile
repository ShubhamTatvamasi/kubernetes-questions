FROM ubuntu

ARG KUBECTL_VERSION=v1.21.0

WORKDIR /root

ADD https://storage.googleapis.com/kodekloud/app_kubernetes-cka /tmp

ADD https://storage.googleapis.com/kodekloud/app_kubernetes-ckad /tmp

ADD https://storage.googleapis.com/kodekloud/app_kubernetes-cka-exam /tmp

ADD https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl /usr/local/bin

RUN chmod 755 \
      /usr/local/bin/kubectl \
      /tmp/app_kubernetes-cka \
      /tmp/app_kubernetes-ckad \
      /tmp/app_kubernetes-cka-exam
