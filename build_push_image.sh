#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

# Perintah untuk melihat daftar image di lokal
docker images

# Perintah untuk mengubah nama image agar sesuai dengan format GitHub Packages 
docker tag item-app:v1 ghcr.io/phanatagama/item-app:v1 

# Perintah untuk login ke GitHub Packages via Terminal
echo $CR_PAT | docker login ghcr.io -u phanatagama --password-stdin

# Perintah untuk mengunggah image ke GitHub Packages
docker push ghcr.io/phanatagama/item-app:v1