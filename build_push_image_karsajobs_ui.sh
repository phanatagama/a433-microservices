#!/bin/bash

# Script untuk Build dan Push Docker Image untuk frontend

# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan untuk frontend
docker build -t karsajobs-ui:latest .

# Perintah login ke GitHub Packages via Terminal
echo $CR_PAT | docker login ghcr.io -u phanatagama --password-stdin

# Perintah untuk mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs-ui:latest ghcr.io/phanatagama/karsajobs-ui:latest

# Perintah mengunggah image ke GitHub Packages
docker push ghcr.io/phanatagama/karsajobs-ui:latest