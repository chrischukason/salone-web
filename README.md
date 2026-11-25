# Salone Digital Solutions - Web Application

A responsive company website built with HTML and CSS, used for the DCOM304
Web Hosting and Design assignment (local Ubuntu + Git + Docker + Nginx deployment).

## Files
| File | Purpose |
|------|---------|
| `index.html` | Main web page |
| `style.css` | Styling (Sierra Leone flag colours) |
| `images/logo.svg` | Logo and favicon |
| `Dockerfile` | Builds the Docker image (Task 3) |
| `salone.conf` | Nginx reverse proxy config (Task 4) |

## Run locally
Open `index.html` in a browser, or with Docker:

    docker build -t salone-web:1.0 .
    docker run -d -p 8080:80 --name salone-web salone-web:1.0

Then visit http://localhost:8080
