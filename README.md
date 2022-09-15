# syncplay-docker-traefik

Syncplay docker with docker-compose, self-maintaining Let's encrypt TLS support and traefik enabled.

![syncplay](https://raw.githubusercontent.com/Syncplay/syncplay/master/syncplay/resources/hicolor/128x128/apps/syncplay.png) 

This work is based on the [syncplay-server](https://github.com/NinetailLabs/syncplay-server) docker image. It expands its capabilities with support for traefik proxy and automatic TLS cert generation.

## Usage

Copy ``.env.dist`` to ``.env`` and set desired password, (sub-)domain name and server salt. Start container with ``docker-compose up -d``. Port 8999 is baked into the docker image and not modifieable. Let's encrypt cert chain is automatically split and stiched into the required files (``cert.pem``, ``chain.pem`` and ``privkey.pem``) with proper UID and GID.
