FROM nginx:latest

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy the custom index.html from the current directory to the Nginx document root
COPY index.html /usr/share/nginx/html/

# Expose port 80 for serving web traffic
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
