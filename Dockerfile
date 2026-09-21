# ---- Build stage: compile the WAR with Maven ----
FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /app

COPY pom.xml .
COPY . .

RUN mvn clean package -DskipTests

# ---- Runtime stage: Tomcat 10.1 on Java 17 ----
FROM eclipse-temurin:17-jdk-alpine

ENV CATALINA_HOME=/opt/tomcat
ENV PATH="${CATALINA_HOME}/bin:${PATH}"
ENV TOMCAT_MAJOR=10
ENV TOMCAT_VERSION=10.1.31

RUN apk add --no-cache bash curl gzip tar \
    && curl -fSL "https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz" -o /tmp/tomcat.tar.gz \
    && mkdir -p "${CATALINA_HOME}" \
    && tar -xzf /tmp/tomcat.tar.gz -C "${CATALINA_HOME}" --strip-components=1 \
    && rm -f /tmp/tomcat.tar.gz \
    && rm -rf "${CATALINA_HOME}"/webapps/* \
    && chmod +x "${CATALINA_HOME}"/bin/*.sh

# Deploy the WAR at the root context path
COPY --from=build /app/target/Sivaganesh_Martt.war ${CATALINA_HOME}/webapps/ROOT.war

EXPOSE 8080

# Configure Tomcat's HTTP connector to bind to Railway's PORT (default 8080)
CMD ["sh", "-c", "sed -i \"s/port=\\\"8080\\\"/port=\\\"${PORT:-8080}\\\"/\" ${CATALINA_HOME}/conf/server.xml && exec ${CATALINA_HOME}/bin/catalina.sh run"]
