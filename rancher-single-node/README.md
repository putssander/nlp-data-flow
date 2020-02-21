Deploy with HELM (see screenshot for secrets)


Create 2 persistent volumes (node path)

    /mnt/data/v1
    /mnt/data/v2

Stream definitions

    stream create --name test --definition "http --server.port=32123 | python-processor --reversestring=true  | log
    
    stream deploy test --properties "deployer.http.kubernetes.createNodePort=32123"

Rancher single node kubernetes (manual port expose)

    kubectl get services --namespace=spring-cloud-data-flow
    
    kubectl expose deployment httplog-http-v1 --type=NodePort --name=http-expose-service --namespace=spring-cloud-data-flow
        
Test

    curl -d '{"key1":"value1", "key2":"value2"}' -H "Content-Type: application/json" -X POST http://192.168.0.30:32667
