FROM nginx:1.24-bullseye

RUN apt-get update

RUN apt-get install -y iptables python3 python3-pip openssh-client sshpass sshuttle curl host iproute2

WORKDIR /gateway

COPY . .

RUN chmod +x start.sh
