[![Build Status](https://travis-ci.org/Brightside56/Docker-nginx-rtmp.svg?branch=master)](https://travis-ci.org/Brightside56/Docker-nginx-rtmp)

# Docker-nginx-rtmp
Docker-имейдж который является точкой публикации и в случае необходимости параллельно сервит RTMP/HLS на основе nginx

Версия NGINX 1.11.3
Версия nginx-rtmp-module 1.1.9

### Настройка
Данный имейдж использует порт 1935 для работы RTMP-потоков и имеет 2 таковых - "live" и "testing".

Для просмотра статистики используйте http://<адрес сервера>:8080/stat

Конфигурационный файл nginx находится по адресу /opt/nginx/conf/

### Запуск

Для того, чтобы запустить контейнер (в фоновом режиме и автостартом в любой непонятной ситуации) и забиндить для него соответствующие порты хоста, запустите следующую команду:
```
docker run --restart=always -d -p 1935:1935 -p 8080:8080 brightside/nginx-rtmp
```

### Пример  настроек для OBS
Учстановите следующие параметры под настройками трансляции:
```
Streaming Service: Custom
Server: rtmp://<адрес сервера>/live
Play Path/Stream Key: mystream
```

### Просмотр потоков по rtmp-ссылке

Откройте url ниже, используя нужный плеер, чтобы посмотреть поток:

rtmp://&lt;your server ip&gt;/live/mystream
