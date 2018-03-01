FROM openjdk:8-jre-alpine

LABEL maintainer "Ilya Glotov <ilya@ilyaglotov.com>"

ENV BURP_VERSION='1.7.32'
ENV _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'

RUN apk --update --no-cache add openssl \
                                ca-certificates \
                                ttf-dejavu

RUN adduser -D burp burp

COPY burpsuite_pro_v${BURP_VERSION}.jar /home/burp/burpsuite_pro.jar

USER burp

WORKDIR /home/burp

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-jar", "burpsuite_pro.jar"]
