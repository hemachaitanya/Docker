FROM ubuntu:latest
RUN  apt update && apt install openjdk-8-jdk -y && apt install maven -y && apt install git -y 
RUN  git clone https://github.com/hemachaitanya/game-of-life.git && cd game-of-life && mvn package
EXPOSE 9090
CMD [ "java","-jar"," target/game-of-life-1.0-SNAPSHOT.jar" ]


