export SPRING_CLOUD_SKIPPER_SERVER_PLATFORM_LOCAL_ACCOUNTS_DEFAULT_PORTRANGE_LOW=20000
export SPRING_CLOUD_SKIPPER_SERVER_PLATFORM_LOCAL_ACCOUNTS_DEFAULT_PORTRANGE_HIGH=20100
export SPRING_DATASOURCE_URL=jdbc:mysql://localhost:3306/dataflow
export SPRING_DATASOURCE_USERNAME=root
export SPRING_DATASOURCE_PASSWORD=rootpw
export SPRING_DATASOURCE_DRIVER_CLASS_NAME=org.mariadb.jdbc.Driver

APP_JAR=$(find . -type f -name "*skipper*.jar")
java -Djava.security.egd=file:/dev/./urandom -jar $APP_JAR