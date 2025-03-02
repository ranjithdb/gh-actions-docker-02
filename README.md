# gh-actions-docker-02

## Dockerized Nginx with GitHub Actions

This project automates the building and deployment of an **Nginx Docker image** using **GitHub Actions** and **Docker Hub**. The workflow is triggered whenever a new **Git tag** is pushed, ensuring semantic versioning and proper image management.

## How It Works

1. **Code Changes**: Developers make changes to the project and commit them.
2. **Version Tagging**: A new version tag is created and pushed to GitHub.
3. **GitHub Actions Workflow**:
   - Builds the Docker image.
   - Tags the image using the version tag and `latest`.
   - Logs into Docker Hub using GitHub Secrets.
   - Pushes the tagged image to Docker Hub.
4. **Deployment**: The latest Docker image can be pulled and deployed from Docker Hub.

## Prerequisites

- A **Docker Hub account** with an existing repository.
- **GitHub repository** configured with GitHub Actions.
- **GitHub Secrets** set up:
  - `DOCKERHUB_USERNAME`: Your Docker Hub username.
  - `DOCKERHUB_TOKEN`: A Docker Hub Access Token (not password).

## Git Tagging and Pushing

To release a new version:

1. **Create a new Git tag** (replace `v1.0.0` with your version):

   ```sh
   git tag v1.0.0
   ```

2. **Push the tag to GitHub**:

   ```sh
   git push origin v1.0.0
   ```

This will trigger the **GitHub Actions workflow** to build and push the Docker image to Docker Hub.

## Pulling the Docker Image

Once the image is pushed, you can pull and run it using:

```sh
docker pull <dockerhub-username>/<nginx-docker>:v1.0.0
```

To run the container:

```sh
docker run -d -p 80:80 <dockerhub-username>/nginx-docker:v1.0.0
```

## To pull my Docker Image

```sh
docker pull ranjithdbas/gh-actions-docker-02:latest
```
