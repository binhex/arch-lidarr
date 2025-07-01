# Application

[Lidarr](https://github.com/lidarr/Lidarr)

## Description

Lidarr is a music collection manager for Usenet and BitTorrent users. It can
monitor multiple RSS feeds for new tracks from your favorite artists and will
grab, sort and rename them. It can also be configured to automatically upgrade
the quality of files already downloaded when a better quality format becomes
available.

## Build notes

Latest development build of Lidarr from Arch Linux AUR.

## Usage

```bash
docker run -d \

    -p 8686:8686 \
    --name=<container name> \
    -v <path for media files>:/media \
    -v <path for data files>:/data \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \

    binhex/arch-lidarr

```

Please replace all user variables in the above command defined by <> with the
correct values.

## Access application

`http://<host ip>:8686`

## Example

```bash
docker run -d \

    -p 8686:8686 \
    --name=lidarr \
    -v /media/tv:/media \
    -v /apps/docker/sabnzbd/watched:/data \
    -v /apps/docker/lidarr:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \

    binhex/arch-lidarr

```

## Notes

User ID (PUID) and Group ID (PGID) can be found by issuing the following command
for the user you want to run the container as:-

```bash
id <username>

```

___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](https://forums.lime-technology.com/topic/62284-support-binhex-lidarr/)
