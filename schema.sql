CREATE TABLE circuits (
   circuit_id INT PRIMARY KEY,
   circuit_ref TEXT,
   name TEXT,
   location TEXT,
   country TEXT
);
CREATE TABLE constructors (
   constructor_id INT PRIMARY KEY,
   constructor_ref TEXT,
   name TEXT,
   nationality TEXT
);
CREATE TABLE drivers (
   driver_id INT PRIMARY KEY,
   driver_ref TEXT,
   code TEXT,
   forename TEXT,
   surname TEXT,
   dob DATE,
   nationality TEXT
);
CREATE TABLE qualifying (
   qualify_id INT PRIMARY KEY,
   race_id INT,
   driver_id INT,
   constructor_id INT,
   number INT,
   position INT
);
CREATE TABLE races (
   race_id INT PRIMARY KEY,
   year INT,
   round INT,
   circuit_id INT,
   name TEXT,
   date DATE
);
CREATE TABLE results (
   result_id INT PRIMARY KEY,
   race_id INT,
   driver_id INT,
   constructor_id INT,
   grid INT,
   position_order INT,
   status_id INT
);
CREATE TABLE status (
   status_id INT PRIMARY KEY,
   status TEXT
);