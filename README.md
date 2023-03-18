# CI/CD for Kubernetes
Building an end to end CloudNative fully automated `Kubernetes native CI/CD pipeline` using the `Argo ecosystem`.

Tools used to build the system -

* [x] ArgoCD \
    Synchornizes Kubernetes configurations stored in Git repository with the Kubernetes cluster, thus enforcing Git to be the single source of truth.

* [x] Argo Workflows \
    Kubernetes Native Continuous Integration pipeline used to build and push container images to Dockerhub.

* [x] Argo Events \
    Kubernetes Native event driven workflow manager used to detect code pushes to GitHub and trigger the corresponding Argo Workflow.

* [x] ArgoCD Image Updater

* [ ] Argo Rollouts

You can view the architecture [here](./architecture.drawio).

> I tried to expose the Argo eventsource using TraefikHub, but miserably failed at that 😭.