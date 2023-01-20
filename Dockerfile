FROM rogerpq/Hack-Termks0:slim-buster

#clonning repo 
RUN git clone https://github.com/rogerpq/Hack-Termks0.git /root/jepthon 
#working directory 
WORKDIR /root/Hack-Termks0

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","bot.py"]
