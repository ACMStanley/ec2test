FROM gradle:7.4-jdk17-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build -x test --no-daemon

FROM openjdk:17-alpine
VOLUME /tmp
EXPOSE 8080
COPY --from=build /home/gradle/src/build/libs/*.jar gradprojectfeb22.jar
ENTRYPOINT ["java","-jar","gradprojectfeb22.jar"]