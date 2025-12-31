FROM python:3.11.9
RUN apt update && apt upgrade -y
RUN apt install git -y
CMD ["bash", "main.sh"]
