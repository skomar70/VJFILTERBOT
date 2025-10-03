# Don't Remove Credit @VJ_Botz
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10.8-slim-bullseye

# Update apt and install git
RUN apt-get update && apt-get upgrade -y && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Copy requirements and install
COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /requirements.txt

# Create working directory
RUN mkdir -p /VJ-FILTER-BOT
WORKDIR /VJ-FILTER-BOT

# Copy project files
COPY . /VJ-FILTER-BOT

# Run bot
CMD ["python", "bot.py"]

