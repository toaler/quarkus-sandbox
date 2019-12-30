FROM adoptopenjdk/openjdk11

RUN mkdir -p /app/lib/
RUN cd /app

RUN ls -lrt /app/
COPY target/lib/* /app/lib/
COPY target/getting-started-1.0-SNAPSHOT-runner.jar /app/
RUN ls -lrt /app/*jar

WORKDIR /app

EXPOSE 8080 

CMD ["java", "-jar", "getting-started-1.0-SNAPSHOT-runner.jar"]
