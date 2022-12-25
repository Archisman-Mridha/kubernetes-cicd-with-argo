locals {
    kubeconfig= {

        path = "~/.kube/config"
        context = "k3d-kubernetes-cicd"
    }
}