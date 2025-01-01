-- Create a Schema
CREATE SCHEMA YAHAV_HOFFMANN;
-- Create table users
CREATE TABLE YAHAV_HOFFMANN.users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  address TEXT,
  phone_number VARCHAR(15)
);
-- Create table hobbies
CREATE TABLE YAHAV_HOFFMANN.hobbies (
  user_id INT REFERENCES YAHAV_HOFFMANN.users(id) ON DELETE CASCADE,
  hobby TEXT NOT NULL
);
