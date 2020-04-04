# kubernetes-questions

start questions container
```bash
docker run -d --name kubernetes-questions shubhamtatvamasi/kubernetes-questions \
  /tmp/app_kubernetes-cka --questions_json a.json
```
> if you want to get CKAD questions update the file name to `app_kubernetes-ckad`

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
