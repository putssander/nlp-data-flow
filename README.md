# NLP-DATAFLOW

Use Spring Cloud Data Flow to build NLP pipelines



## Docker streaming apps without Kubernetes

#### Create network

    docker network create nlp-data-flow-network


#### Get binaries 

Skipper needs a local deployment on the host machine.

dataflow-server and skipper-server from here:
https://repo.spring.io/release/org/springframework/cloud/spring-cloud-skipper-server/
https://repo.spring.io/release/org/springframework/cloud/spring-cloud-dataflow-server/

For example:
https://repo.spring.io/release/org/springframework/cloud/spring-cloud-skipper-server/2.3.0.RELEASE/spring-cloud-skipper-server-2.3.0.RELEASE.jar
https://repo.spring.io/release/org/springframework/cloud/spring-cloud-dataflow-server/2.4.0.RELEASE/spring-cloud-dataflow-server-2.4.0.RELEASE.jar

#### Run binaries

#### Run docker-compose

#### Deploy stream

#### Post stream deploy
    
Manually connect de containers to the network

    docker network connect nlp-data-flow-network <container-id>