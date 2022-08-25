# Simple Node App
# Simple React (Frontend) / NodeJS (Backend) App

## Purpose

docker-compose.yaml     ----> Primarly used by EBS (Elastic Beanstalk) to build using the Dockerfile

docker-compose-dev.yaml ----> Primarly used in dev environment to build using Dockerfile.dev

Dockerfile              ----> Builds a JS app using NPM, then deploys it via NGINX (Used by EBS)

Dockerfile.dev          ----> Downloads all dependencies and starts JS app locally