FROM nginx:1.27.4

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY index.html .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
