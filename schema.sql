CREATE TABLE circuits (
   circuitID INT PRIMARY KEY,
   circuitRef TEXT,
   name TEXT,
   location TEXT,
   country FLOAT
);
CREATE TABLE constructorResults (
   constructorResultsId INT PRIMARY KEY,
   raceId INT,
   constructorId INT,
   points INT
);
CREATE TABLE constructors (
   constructorId INT PRIMARY KEY,
   constructorRef TEXT,
   name TEXT,
   nationality TEXT
);
CREATE TABLE constructorStandings (
   constructorStandingsId INT PRIMARY KEY,
   raceId INT,
   constructorId INT,
   points INT,
   position INT,
   positionText INT,
   wins INT
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
CREATE TABLE driverStandings (
   driverStandingsId INT PRIMARY KEY,
   raceId INT,
   driverId INT,
   points INT,
   position INT,
   positionText INT,
   wins INT
);
CREATE TABLE qualifying (
   qualifyId INT PRIMARY KEY,
   raceId INT,
   driverId INT,
   constructorId INT,
   number INT,
   position INT,
   q1 INTERVAL,
   q2 INTERVAL,
   q3 INTERVAL
);
CREATE TABLE races (
   raceId INT PRIMARY KEY,
   year INT,
   round INT,
   circuitId INT,
   name TEXT,
   date DATE,
   time TIME
);