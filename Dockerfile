FROM nginx:alpine

# Copy semua file di folder lokal ke direktori default Nginx
COPY . /usr/share/nginx/html/

# Expose port 80 ke Cloudron
EXPOSE 80

# Jalankan Nginx di foreground
CMD ["nginx", "-g", "daemon off;"]