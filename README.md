# aapanel_docker
[GitHub](https://github.com/Ed1ks)


Based on original aapanel/aapanel

Fixed dockerized Aapanel

Testet and worked date 03-03-2023

Features:

* Uses latest aapanel image from portainer hub.

* Creates an startup script to start all services on boot.

* Adds /etc, /usr and /sys/fs/cgroup in Volume, so installed apps wont get missing



Please check the Dockerfile for exec information.



Run following command for instant run:

`docker run -dt --name aapanel -p 7820:7800 -v /usr -v /etc -v /sys/fs/cgroup -v aapanel_data:/www ed1k/aapanel:latest`

security Entry: `http://<your ip>/aapanel`
  
username: aapanel
  
password: aapanel123
