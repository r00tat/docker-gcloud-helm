# debian-gcloud-helm

glcoud for Google Container Engine with helm installed

Extends [paulwoelfel/debian-docker](https://hub.docker.com/r/paulwoelfel/debian-docker/) with gcloud and helm to automatically deploy applications to kubernetes.

You can run helm commands like this:

```bash
docker run --rm -v gcloud:/root/.config -it paulwoelfel/debian-gcloud-helm gcloud auth login
docker run --rm -v gcloud:/root/.config -it paulwoelfel/debian-gcloud-helm gcloud auth list
docker run --rm -v gcloud:/root/.config -it paulwoelfel/debian-gcloud-helm gcloud container clusters get-credentials --project $PROJECT_ID $CLUSTER_NAME
docker run --rm -v gcloud:/root/.config -it paulwoelfel/debian-gcloud-helm helm init
```
