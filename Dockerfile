FROM nginx:alpine

# 1) Hapus skrip entrypoint bawaan, agar tidak modifikasi apa pun
RUN rm -rf /docker-entrypoint.d/*

# 2) Hapus config default bawaan (agar hanya pakai config kita)
RUN rm -f /etc/nginx/conf.d/default.conf

# 3) Salin config nginx kustom -> /etc/nginx/nginx.conf
COPY config/nginx.conf /etc/nginx/nginx.conf

# 4) Salin file statis (index.html, assets, dsb.) ke /usr/share/nginx/html
COPY index.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

# 5) Expose port 80
EXPOSE 80

# 6) Jalankan Nginx (tanpa daemon)
CMD ["nginx", "-g", "daemon off;"]