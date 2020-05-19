FROM ubuntu

RUN apt update && apt install -y wget

RUN wget https://storage.googleapis.com/kodekloud/app_kubernetes-cka -O /tmp/app_kubernetes-cka

RUN wget https://storage.googleapis.com/kodekloud/app_kubernetes-ckad -O /tmp/app_kubernetes-ckad

RUN wget https://storage.googleapis.com/kodekloud/app_kubernetes-cka-exam -O /tmp/app_kubernetes-cka-exam

RUN chmod 755 /tmp/app_kubernetes-cka

RUN chmod 755 /tmp/app_kubernetes-ckad

RUN chmod 755 /tmp/app_kubernetes-cka-exam
