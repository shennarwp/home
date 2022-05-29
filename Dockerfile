FROM nginx:1.22.0-alpine
MAINTAINER      Shenna Risqianto Wilfred Piri <shennawew@outlook.com>

COPY index.html favicon.png sakura.css /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
