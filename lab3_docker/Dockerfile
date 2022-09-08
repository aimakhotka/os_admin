FROM alpine:latest
RUN apk update && apk upgrade && apk add nginx
COPY nginx.conf /etc/nginx/
ADD template /var/lib/nginx/html/
EXPOSE 80
CMD ["nginx"]
