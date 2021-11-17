FROM consol/centos-xfce-vnc

RUN apt update
RUN apt install wget unzip curl sudo
RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
RUN unzip ngrok-stable-linux-amd64.zip
RUN ./ngrok authtoken 1pZnzb0R5eHFgpStdpiAMD49ry9_5fLmE4z6jU892CEn2QvkT
CMD ./ngrok tcp 6901 --region=eu
