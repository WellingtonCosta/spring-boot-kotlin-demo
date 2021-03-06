-- V1.0000__2018.01.15.sql

CREATE TABLE author (
  id BIGSERIAL PRIMARY KEY NOT NULL,
  "name" VARCHAR NOT NULL
);

CREATE TABLE book (
  id BIGSERIAL PRIMARY KEY NOT NULL,
  title VARCHAR NOT NULL,
  "year" BIGINT NOT NULL,
  author BIGINT REFERENCES author(id) NOT NULL
);