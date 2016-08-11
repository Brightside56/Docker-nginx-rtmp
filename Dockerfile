FROM alpine:latest
MAINTAINER Oleg Gumbar <brightside@fonline-status.ru>

RUN	apk update		&&	\
	apk add				\
		openssl			\
		libstdc++		\
		ca-certificates		\
		pcre


# ADD	nginx.tar.gz /opt/
# ADD	nginx.conf /opt/nginx/conf/nginx.conf

EXPOSE 1935
EXPOSE 8080

CMD ["/opt/nginx/sbin/nginx", "-g", "daemon off;"]
