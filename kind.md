# connect to kind cluster

get kubeconfig for cluster:
```bash
kind get kubeconfig > config
```

connect to cluster:
```bash
docker run --rm -it -p 8080:8080 \
  --net kind \
  -v ${PWD}:/root/.kube \
  --name kubernetes-questions \
  kubernetes-questions \
  kubectl proxy --port=8888 --address=0.0.0.0 --accept-hosts='.*'
```

```bash
docker exec -it kubernetes-questions \
  /tmp/app_kubernetes-cka --questions_json kub_for_beginners_pods.json
```
