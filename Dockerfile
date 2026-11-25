# Used in Task 3 - packages the website into a Docker image
FROM nginx:alpine
COPY index.html style.css /usr/share/nginx/html/
COPY images /usr/share/nginx/html/images
EXPOSE 80
