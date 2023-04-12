FROM ubuntu:latest
RUN apt update && apt install openjdk-8-jdk -y && apt install maven -y && apt install git -y
RUN git clone https://github.com/hemachaitanya/game-of-life.git && cd game-of-life &&\ 
    mvn install 
WORKDIR cd gameoflife-web
CMD ["mvn","jetty:run"]