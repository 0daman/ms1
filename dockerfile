FROM openjdk:8-jre-alpine
LABEL maintainer="Sandeep Kumar"
WORKDIR /
ARG VER=0.0.1
ENV VER ${VER}
ADD ./target/ms1-$VER.jar /opt/lib/ms1.jar
EXPOSE 80
ENTRYPOINT ["java", "-Xmx512m","-Xss16m","-jar", "-Dconsole.level=INFO", "/opt/lib/ms1.jar"]