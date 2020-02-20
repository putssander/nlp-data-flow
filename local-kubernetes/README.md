Enable kubernetes in docker preferences (OSX/Windows)

Enable admin user and create token


kubectl installation (kafka)

[https://dataflow.spring.io/docs/installation/kubernetes/kubectl/](https://dataflow.spring.io/docs/installation/kubernetes/kubectl/)


Port forward to scdf-server    
        
   
        kubectl get pod scdf-server-5c65986fd9-krddw --template='{{(index (index .spec.containers 0).ports 0).containerPort}}{{"\n"}}'
    
        kubectl port-forward scdf-server-5c65986fd9-krddw 7000:80
    
    
OR helm installation (kafka, nodeport)

    helm repo add stable https://kubernetes-charts.storage.googleapis.com

    helm install --set server.service.type=NodePort --set features.batch.enabled=false --set rabbitmq-ha.enabled=true,rabbitmq.enabled=false stable/spring-cloud-data-flow --version 2.6.0 --generate-name 

