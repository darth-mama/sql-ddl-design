-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist


TABLE "regions" {
  "id" SERIAL [primary key]
  "name" text
}

TABLE "users" {
  "id" SERIAL [primary key]
  "username" text
  "password" text
  "region_id" integer
}

TABLE "posts" {
  "id" SERIAL [primary key]
  "title" text
  "description" text
  "user_id" integer
  "region_id" integer
  "category_id" integer
}

TABLE "categories" {
  "id" integer
  "name" text
}


Ref: regions.id > posts.region_id // many-to-one

Ref: users.id > posts.user_id

Ref: categories.id > posts.category_id
