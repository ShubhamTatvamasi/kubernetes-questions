FROM ubuntu

ADD https://storage.googleapis.com/kodekloud/app_kubernetes-cka /tmp/app_kubernetes-cka

ADD https://storage.googleapis.com/kodekloud/app_kubernetes-ckad /tmp/app_kubernetes-ckad

ADD https://storage.googleapis.com/kodekloud/app_kubernetes-cka-exam /tmp/app_kubernetes-cka-exam

RUN chmod 755 /tmp/app_kubernetes-cka

RUN chmod 755 /tmp/app_kubernetes-ckad

RUN chmod 755 /tmp/app_kubernetes-cka-exam
