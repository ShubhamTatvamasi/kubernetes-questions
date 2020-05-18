# kubernetes-questions

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/shubhamtatvamasi/kubernetes-questions)](https://hub.docker.com/r/shubhamtatvamasi/kubernetes-questions)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/shubhamtatvamasi/kubernetes-questions?sort=semver)](https://hub.docker.com/r/shubhamtatvamasi/kubernetes-questions)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/shubhamtatvamasi/kubernetes-questions/latest)](https://hub.docker.com/r/shubhamtatvamasi/kubernetes-questions)
[![Docker Pulls](https://img.shields.io/docker/pulls/shubhamtatvamasi/kubernetes-questions)](https://hub.docker.com/r/shubhamtatvamasi/kubernetes-questions)
[![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/shubhamtatvamasi/kubernetes-questions/latest)](https://hub.docker.com/r/shubhamtatvamasi/kubernetes-questions)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/shubhamtatvamasi/kubernetes-questions)](https://hub.docker.com/r/shubhamtatvamasi/kubernetes-questions)

app | location
--- | ---
CKA | /tmp/app_kubernetes-cka
CKAD | /tmp/app_kubernetes-ckad
EXAM | /tmp/app_kubernetes-cka-exam

start questions container
```bash
docker run -d --name kubernetes-questions shubhamtatvamasi/kubernetes-questions \
  /tmp/app_kubernetes-cka --questions_json a.json
```
> replace the app for different set of questions

list all questions
```bash
# first list the tmp folder
docker exec kubernetes-questions ls /tmp/
# update the tmp folder name <_MEIDI28Vs>  # and list the questions
docker exec kubernetes-questions ls /tmp/<_MEIDI28Vs>/questions
```

cat any question
```bash
docker exec kubernetes-questions cat /tmp/<_MEIDI28Vs>/questions/kub_for_beginners.json
```
> you can also use ` | jq` after the command for clean output

kill the container
```bash
docker rm -f kubernetes-questions
```
---

proxy for the app access
```bash
kubectl proxy --port=8888 --address=0.0.0.0 --accept-hosts='^.*$' &
```
---

copy file from container
```bash
docker run --rm -v ${PWD}:/host shubhamtatvamasi/kubernetes-questions \
  find /tmp -type f -exec cp {} /host \;
```
