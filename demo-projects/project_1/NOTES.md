# Building Multi-Container Applications with Docker

## Goals of this Section

- combine multiple services to one app
- work with multiple containers

## Demo Project 1

Three Building Blocks

- Database: MongoDB
  - data must persist
  - access should be limited - authentication 
- Backend: NodeJS REST API
  - data must persist - log files
  - live source code update
- Frontend: React SPA
  - live source code update
