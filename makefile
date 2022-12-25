#* K3D Cluster

create-cluster:
	k3d cluster create --config ./cluster.config.yaml

start-cluster:
	k3d cluster start kubernetes-cicd

stop-cluster:
	k3d cluster stop kubernetes-cicd

delete-cluster:
	k3d cluster delete kubernetes-cicd

#* Argo Dashboards

get-argocd-server-password:
	kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

show-argocd-ui:
	kubectl port-forward svc/argocd-server -n argocd 8080:443

show-argo-workflows-ui:
	kubectl -n argo port-forward deployment/argo-server 2746:2746