-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS patient-visits;

CREATE DATABASE patient-visits;

\c patient-visits

CREATE TABLE "doctor" (
  "id" SERIAL PRIMARY KEY,
  "name" text NOT NULL,
  "specialty" text NOT NULL
);

CREATE TABLE "patient" (
  "id" SERIAL PRIMARY KEY,
  "name" text NOT NULL,
  "insurance" text DEFAULT 'NONE'
  "birthday"
);

CREATE TABLE "visit" (
  "id" SERIAL PRIMARY KEY,
  "doctor_id" integer,
  "patient_id" integer,
  "date" integer
);

CREATE TABLE "disease" (
  "id" integer,
  "name" text
);

CREATE TABLE "diagnosis" (
  "id" integer,
  "visit_id" integer,
  "disease_id" integer
);
