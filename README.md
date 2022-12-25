# CI/CD for Kubernetes

Building an end to end CloudNative fully automated Kubernetes native CI/CD pipeline using the Argo ecosystem.

Tools used to build the system -

* [x] ArgoCD \
    Synchornizes Kubernetes configurations stored in Git repository with the Kubernetes cluster, thus enforcing Git to be the single source of truth.

* [x] Argo Workflows \
    Kubernetes Native Continuous Integration pipeline used to build and push container images to Dockerhub.

* [x] Argo Events \
    Kubernetes Native event driven workflow manager used to detect code pushes to GitHub and trigger the corresponding Argo Workflow.

* [ ] Argo Image Updater

* [ ] Argo Rollouts

You can view the architecture [here](./architecture.drawio).

> I tried to expose the Argo eventsource using TraefikHub, but miserably failed at that. When new code is pushed to GitHub, GitHub sends the event details to the uri provided by TraefikHub, but from there, those event details can't reach the Kubernetes service related to the eventsource. I tried to send POST requests manually using curl, to that uri provided by TraefikHub and realized that TraefikHub is forwarding the POST request to somewhere else 😭. The CI/CD pipeline is not fully automated until the eventsource is exposed to the public internet, since GitHub should be able to reach the eventsource inorder to send new code push events.