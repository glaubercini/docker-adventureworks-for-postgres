# A docker compose to use AdventureWorks for Postgres and Adminer

This repository holds almost-entire-copy of strategy started [here](https://github.com/lorint/AdventureWorks-for-Postgres), where you can create a Postgres Docker container and initialize the Microsoft AdventureWorks database on it.

## Differences
* An Adminer image was added;
* The AdventureWorks zip file was added;
* A simple network was created;
* No docker user for Postgres;
* Postgres version 13.2;
* A volume was created.

## How to build

```sh
cd /path/to/copy/of/repository
mkdir postgres_data
docker-compose build
docker-compose up -d
```

## How to navigate through database
```
Adminer: localhost:8080
System: PostgreSQL
Server: 100.5.0.2
Username: postgres
Password: blog
Database: empty or Adventureworks
```