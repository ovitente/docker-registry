# WIP: Docker Registry

Ставишь докер и композ

Закидываешь docker-compose.yaml в папку где будешь запускать, например `/opt/docker-registry/`

Генеришь просто сертификат без нджинкса
`sudo certbot certonly --standalone -d registry.x7systems.com`

Копируешь в локальную certs и переименовываешь по такой схеме
```
fullchain.crt
privkey.key
```
Нужны только эти двое.
