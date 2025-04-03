# Use Nginx as the base image
FROM nginx:latest

# Copy index.html to the Nginx HTML directory
COPY 22ISR059 wt/ usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
