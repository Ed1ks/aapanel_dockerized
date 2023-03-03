
# aapanel_dockerized

[GitHub](https://github.com/Ed1ks/aapanel_dockerized)

Based on original [aapanel/aapanel:lib](https://hub.docker.com/r/aapanel/aapanel) (as of 03-03-2023)
Fixed dockerized Aapanel
Testet and worked on date 03-03-2023

## Features:

* Uses original aapanel image from [Docker Hub](https://hub.docker.com/).
* Creates an startup script to start all services on boot.
* Adds /etc, /usr, /sys/fs/cgroup and /www as Volume, so installed apps wont get missed.

Please check the Dockerfile for exec information.

## Create it
Run following command for instant run:

`docker run -dt --name aapanel --no-healthcheck -p 7821:7800 -v /usr -v /etc -v /dev/shm -v /sys/fs/cgroup -v aapanel_data:/www ed1k/aapanel:latest`

This command deactivates the healthcheck of base image. Else it will show unhealthy state of your container, after setting the panel to ssl (base image checks connection of http://).

## Run it
security Entry: `http://<your ip>:7820/aapanel`
username: aapanel
password: aapanel123

## Recommended Aapanel setup
This setup is assuming that you use [nginx-proxy-manager](https://hub.docker.com/r/jc21/nginx-proxy-manager) (npm) as container and you want to use it as first proxy behind cloudflare.
If not, your setup might differ.
1. login to the panel
2. go to settings and change username and password and save
3. go to settings and set domain
4. setup your domain in cloudflare
5. in npm set your domain as http://, create automaticly your certificate and force ssl.
6. login in aapanel with your domain
7. create ssl certificate in cloudflare for your domain
8. in settings -> security click on "set" at "Panel SSL", copy here your certificate from cloudflare and save.
9. change the "Panel SSL" Trigger in aapanel, even if its already green and save. (Its buggy, as it is not activated)
10. change Scheme in npm to https:// and save 
11. now you can login again into aapanel and make your one-click-deplyoment
12. open ssl-port in phpadmin settings.
