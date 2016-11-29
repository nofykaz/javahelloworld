FROM java:8

MAINTAINER Mathieu AUVRAY <mathieu.auvray@free.fr>

ENV FOO bar

COPY src /home/auvraym/javahelloworld/src

WORKDIR /home/auvraym/javahelloworld

RUN javac -d /bin  src/Helloworld.java

ENTRYPOINT ["java", "-cp", "/bin", "Helloworld"]

