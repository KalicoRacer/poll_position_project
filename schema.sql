CREATE TABLE circuits (
   circuitID INT PRIMARY KEY,
   circuitRef TEXT,
   name TEXT,
   location TEXT,
   country TEXT
);
CREATE TABLE constructors (
   constructorId INT PRIMARY KEY,
   constructorRef TEXT,
   name TEXT,
   nationality TEXT
);
CREATE TABLE drivers (
   driverId INT PRIMARY KEY,
   driverRef TEXT,
   code TEXT,
   forename TEXT,
   surname TEXT,
   dob DATE,
   nationality TEXT
);
CREATE TABLE qualifying (
   qualifyId INT PRIMARY KEY,
   raceId INT,
   driverId INT,
   constructorId INT,
   number INT,
   position INT
);
CREATE TABLE races (
   raceId INT PRIMARY KEY,
   year INT,
   round INT,
   circuitId INT,
   name TEXT,
   date DATE
);
CREATE TABLE results (
   resultId INT PRIMARY KEY,
   raceId INT,
   driverId INT,
   constructorId INT,
   grid INT,
   positionOrder INT,
   statusId INT
);
CREATE TABLE status (
   statusId INT PRIMARY KEY,
   status TEXT
);