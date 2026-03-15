# VProfile DevOps Project

This project demonstrates the deployment of a multi-tier Java web application using DevOps practices.

## Architecture

The application uses a microservice-based architecture consisting of:

- Nginx – Web Server
- Tomcat – Application Server
- RabbitMQ – Message Queue
- Memcached – Caching
- MySQL – Database
- Elasticsearch – Search Engine

Infrastructure is provisioned using:

- Vagrant
- VirtualBox

## Architecture Diagram
![Architecture](architecture/architecture-diagram.png)

## Infrastructure Setup

VMs created:

| VM Name | Role |
|-------|------|
| web01 | Nginx |
| app01 | Tomcat |
| rmq01 | RabbitMQ |
| mc01 | Memcache |
| db01 | MySQL |

## Setup Steps


