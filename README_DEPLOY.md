# Deploying with Docker

This repository includes files to build and deploy the static site as a Docker container.

- `Dockerfile` — builds the site into an nginx image.
- `docker-compose.yml` — compose file to run the container on your server.

On your server
1. Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/istanbuljeoloji.git
cd istanbuljeoloji
```

2. Build the Docker image:
```bash
docker build -t istanbuljeoloji:latest .
```

3. Run the container:
```bash
docker run -d --name istanbuljeoloji -p 80:80 istanbuljeoloji:latest
```

Or use docker-compose:
```bash
docker-compose up -d
```

Updates
To pull the latest changes and redeploy:
```bash
git pull
docker build -t istanbuljeoloji:latest .
docker stop istanbuljeoloji
docker rm istanbuljeoloji
docker run -d --name istanbuljeoloji -p 80:80 istanbuljeoloji:latest
```

Or with docker-compose:
```bash
git pull
docker-compose up -d --build
```
