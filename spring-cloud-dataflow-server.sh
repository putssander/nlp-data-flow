# host.docker.internal
export SPRING_DATASOURCE_URL=jdbc:mysql://localhost:3306/dataflow
export SPRING_DATASOURCE_USERNAME=root
export SPRING_DATASOURCE_PASSWORD=rootpw
export SPRING_DATASOURCE_DRIVER_CLASS_NAME=org.mariadb.jdbc.Driver

APP_JAR=$(find . -type f -name "*server*.jar")
java -jar $APP_JAR
