TAG=samlockart/gitops-toolkit:dev

all: build
 
build:
	docker build . -t $(TAG)
 
push: build
	docker push $(TAG)

deploy:
	kustomize build . | kubectl apply -f - 