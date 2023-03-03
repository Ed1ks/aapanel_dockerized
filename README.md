# aapanel_dockerized
[GitHub](https://github.com/Ed1ks/aapanel_dockerized)


Based on original [aapanel/aapanel:lib](https://hub.docker.com/r/aapanel/aapanel) (as of 03-03-2023)

Fixed dockerized Aapanel

Testet and worked on date 03-03-2023

Features:

* Uses latest aapanel image from [Docker Hub](https://hub.docker.com/).

* Creates an startup script to start all services on boot.

* Adds /etc, /usr, /sys/fs/cgroup and /www as Volume, so installed apps wont get missed.



Please check the Dockerfile for exec information.



Run following command for instant run:

`docker run -dt --name aapanel -p 7820:7800 -v /usr -v /etc -v /sys/fs/cgroup -v aapanel_data:/www ed1k/aapanel:latest`

security Entry: `http://<your ip>:7820/aapanel`
  
username: aapanel
  
password: aapanel123
