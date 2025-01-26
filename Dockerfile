FROM nginx:alpine

# (1) Hapus semua skrip entrypoint bawaan
RUN rm -rf /docker-entrypoint.d/*

# (2) Ganti semua path /var/cache/nginx menjadi /tmp
RUN sed -i 's|/var/cache/nginx|/tmp|g' /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

# (3) Salin file HTML/asset ke direktori bawaan Nginx
COPY . /usr/share/nginx/html/

EXPOSE 80

# (4) Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]