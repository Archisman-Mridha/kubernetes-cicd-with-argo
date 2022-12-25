locals {
    kubeconfig= {

        path = "~/.kube/config"
        context = "kubernetes-cicd"
    }
}