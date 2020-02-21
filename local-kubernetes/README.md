Enable kubernetes in docker preferences (OSX/Windows)

Enable admin user and create token


kubectl installation (kafka)

[https://dataflow.spring.io/docs/installation/kubernetes/kubectl/](https://dataflow.spring.io/docs/installation/kubernetes/kubectl/)


Port forward to scdf-server    
        
   
        kubectl get pod scdf-server-5c65986fd9-krddw --template='{{(index (index .spec.containers 0).ports 0).containerPort}}{{"\n"}}'
    
        kubectl port-forward scdf-server-5c65986fd9-krddw 9393:80
    
    
OR helm installation (kafka, nodeport)

    helm repo add stable https://kubernetes-charts.storage.googleapis.com

    helm install --set server.service.type=NodePort --set features.batch.enabled=false --set kafka.enabled=true,rabbitmq.enabled=false stable/spring-cloud-data-flow --version 2.6.0 --generate-name 



Command failed org.springframework.cloud.dataflow.rest.client.DataFlowClientException: Could not write JSON: (was java.util.NoSuchElementException); nested exception is com.fasterxml.jackson.databind.JsonMappingException: (was java.util.NoSuchElementException) (through reference chain: org.springframework.hateoas.PagedModel["_embedded"]->java.util.Collections$UnmodifiableMap["appStatusResourceList"]->java.util.ArrayList[1]->org.springframework.cloud.dataflow.rest.resource.AppStatusResource["name"])
