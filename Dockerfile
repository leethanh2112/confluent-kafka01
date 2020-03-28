FROM confluentinc/cp-kafka:latest
MAINTAINER ThanhCL

# Download agent & config
RUN mkdir /home/prometheus

COPY jmx_prometheus_javaagent-0.3.1.jar /home/prometheus/prometheus/jmx_prometheus_javaagent-0.3.1.jar
COPY kafka-0-8-2.yaml /home/prometheus/kafka-0-8-2.yaml
COPY confluent-kafka.service /etc/systemd/system/confluent-kafka.service
COPY server.properties /etc/kafka/server.properties
COPY client.truststore.jks /var/ssl/private/client.truststore.jks
COPY client.keystore.jks /var/ssl/private/client.keystore.jks







