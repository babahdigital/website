FROM nginx:alpine

# Hapus skrip bawaan (opsional, agar tidak mengubah config bawaan)
RUN rm -rf /docker-entrypoint.d/*

# Hapus/rename config bawaan agar Nginx hanya memakai nginx.conf kita
RUN rm /etc/nginx/conf.d/default.conf

# Salin nginx.conf kustom
COPY config/nginx.conf /etc/nginx/nginx.conf

# Salin semua file HTML ke /usr/share/nginx/html
COPY . /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]