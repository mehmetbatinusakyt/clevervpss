FROM consol/centos-xfce-vnc

CMD apt update
CMD apt install wget unzip curl sudo
CMD wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
CMD unzip ngrok-stable-linux-amd64.zip
CMD ./ngrok authtoken 1pZnzb0R5eHFgpStdpiAMD49ry9_5fLmE4z6jU892CEn2QvkT
CMD ./ngrok tcp 6901 --region=eu
