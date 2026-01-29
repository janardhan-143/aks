# Use the lightweight Nginx Alpine image
FROM nginx:alpine
 
# Remove the default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*
 
# Copy your index.html into the Nginx server directory
COPY index.html /usr/share/nginx/html/index.html
 
# Expose port 80 to allow traffic
EXPOSE 80
 
# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
