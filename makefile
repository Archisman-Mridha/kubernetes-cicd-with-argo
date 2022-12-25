create-cluster:
	k3d cluster create --config ./cluster.config.yaml

start-cluster:
	k3d cluster start kubernetes-cicd

stop-cluster:
	k3d cluster stop kubernetes-cicd

delete-cluster:
	k3d cluster delete kubernetes-cicd