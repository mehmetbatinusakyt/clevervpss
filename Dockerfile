FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt update
RUN apt install wget -y
RUN apt install curl -y
RUN apt install unzip -y
RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
RUN unzip ngrok-stable-linux-amd64.zip
RUN ./ngrok authtoken 1pZnzb0R5eHFgpStdpiAMD49ry9_5fLmE4z6jU892CEn2QvkT
RUN nohup ./ngrok tcp 80 &>/dev/null &
RUN echo Kuruluyor
RUN curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
