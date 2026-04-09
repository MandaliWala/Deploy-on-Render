FROM python:3.11-slim

RUN apt update && apt upgrade -y && apt install -y libmagic1 libmagic-dev
RUN apt install git -y

# Linux deps for Playwright
RUN apt-get install -y --no-install-recommends \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libatspi2.0-0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libgtk-3-0 \
    libxkbcommon0 \
    libasound2 \
    libglib2.0-0 \
    libnss3 \
    libxshmfence1 \
    libdrm2 \
    ca-certificates \
    fonts-liberation \
    libappindicator3-1 \
    libx11-xcb1 \
    libxtst6 \
    wget \
    curl \
    gnupg \
    mediainfo \
    ffmpeg \
&& rm -rf /var/lib/apt/lists/*

RUN cd /
RUN mkdir /N2Bot
WORKDIR /N2Bot
COPY . /N2Bot
CMD ["bash", "main.sh"]
