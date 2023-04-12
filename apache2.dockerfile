FROM ubuntu:latest
RUN apt update && apt install apache2 -y
EXPOSE 8080
CMD ["systemctl","start","apache2"]