FROM nginx:1.25-alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy site into nginx html folder
COPY . /usr/share/nginx/html

# Ensure nginx can read files
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
