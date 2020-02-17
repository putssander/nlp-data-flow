
Get binaries for dataflow-server and skipper-server from here:
https://repo.spring.io/release/org/springframework/cloud/spring-cloud-skipper-server/
https://repo.spring.io/release/org/springframework/cloud/spring-cloud-dataflow-server/


For example:
https://repo.spring.io/release/org/springframework/cloud/spring-cloud-skipper-server/2.3.0.RELEASE/spring-cloud-skipper-server-2.3.0.RELEASE.jar
https://repo.spring.io/release/org/springframework/cloud/spring-cloud-dataflow-server/2.4.0.RELEASE/spring-cloud-dataflow-server-2.4.0.RELEASE.jar


docker network create nlp-data-flow-network



docker network connect nlp-data-flow-network <container-id>