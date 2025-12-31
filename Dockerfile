FROM python:3.11.9
RUN apt update && apt upgrade -y
RUN apt install git -y

RUN cd /
RUN mkdir /N2Bot
WORKDIR /N2Bot
COPY . /N2Bot
CMD ["bash", "main.sh"]
