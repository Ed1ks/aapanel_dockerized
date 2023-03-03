# aapanel_docker
Idea using an start.sh is from adam3278/aapanel

Fixed dockerized Aapanel

Testet and worked date 03-03-2023

Features:
-> Use latest aapanel image from portainer hub.
-> Create an startup script to start all services on boot.
-> Add /etc, /usr and /sys/fs/cgroup in Volume, so installed apps wont get missing

Please check the Dockerfile for exec information.

Run following command:
`docker run -dt --name aapanel -p 7820:7800 -v /usr -v /etc -v /sys/fs/cgroup -v aapanel_data:/www ed1k/aapanel:latest`

