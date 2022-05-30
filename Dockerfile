FROM anasty17/mltb:latest

WORKDIR /maruf

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y;apt-get install -y wget
RUN wget -O m.zip https://github.com/rooted-cyber/terminator-m-okteto/raw/main/mirror-term.zip;unzip m.zip;cd mirro*;pip3 install --no-cache-dir -r requirements.txt;chmod -R 777 *;chmod -R 777 *;bash start*

