FROM nginx:alpine

VOLUME ["/usr/share/nginx/html/apps"]

COPY . /usr/share/nginx/html/

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
