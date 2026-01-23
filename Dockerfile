FROM python:3.11-slim

RUN apt update && apt upgrade -y
RUN apt install git -y

# Linux deps for Playwright
RUN apt-get install -y \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libxkbcommon0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libgbm1 \
    libgtk-3-0 \
    libasound2 \
    libglib2.0-0 \
 && rm -rf /var/lib/apt/lists/*

RUN cd /
RUN mkdir /N2Bot
WORKDIR /N2Bot
COPY . /N2Bot
CMD ["bash", "main.sh"]
