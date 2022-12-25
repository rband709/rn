FROM rband709/renfb
WORKDIR /app
COPY requirements.txt .
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD python3 bot.py

