FROM nginx:alpine

# Copy semua file di folder kita ke folder default Nginx
COPY . /usr/share/nginx/html/

# Expose port 80 di dalam container
EXPOSE 80

# Jalankan Nginx di foreground
CMD ["nginx", "-g", "daemon off;"]