-- Schema
CREATE TABLE "riders" ("id","name");
CREATE TABLE "stations" ("id","name","Line");
-- Now we have to relate these two tables in visits table
CREATE TABLE "visits" ("rider_id","station_id");
-- it means rider_id from riders table relate with station_id from station table
-- let us delete the tables
DROP TABLE "riders";
DROP TABLE "stations";

DROP TABLE "visits";
CREATE TABLE "riders" (
    "id"  INTEGER,
    "name" TEXT);
CREATE TABLE "stations" (
    "id" INTEGER,
    "name" TEXT,
    "line" TEXT);
CREATE TABLE "visits" (
    "rider_id" INTEGER,
    "station_id" INTEGER );
DROP TABLE "riders";
DROP TABLE "stations";
DROP TABLE "visits";
.schema

-- Recreating the table with primary key and foreign key with column constraints 1.primary key 2.foreign key 3. column constraint like not null and unique 

CREATE TABLE "riders" (
    "id" INTEGER,
    "name" TEXT,
    PRIMARY KEY("id")
);
CREATE TABLE "stations" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "line" TEXT NOT NULL,
    PRIMARY KEY("id")
);
CREATE TABLE "visits" (
    "riders_id" INTEGER,
    "stations_id" INTEGER,
    FOREIGN KEY ("riders_id") REFERENCES "riders"("id"),
    FOREIGN KEY("stations_id") REFERENCES "stations"("id")
);
Drop table "riders";
// rename visits  table t0 swipe
ALTER TABLE "visits" RENAME TO "swipes";
ALTER TABLE "swipes" ADD COLUMN "ttpe" TEXT;
// By mistake i write ttpe of type so let correct It 
ALTER TABLE "swipes" RENAME COLUMN "ttpe" to "type";
DROP table "stations";
DROP TABLE "swipes";
.schema
CREATE TABLE "cards" (
    "id" INTEGER,
    PRIMARY KEY("id"));
CREATE TABLE "stations" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY ("id")
);
CREATE TABLE "swipes" (
    "id" INTEGER,
    "card_id" INTEGER,
    "station_id" INTEGER,
    "type" TEXT NOT NULL CHECK ("type" IN ('enter','exit','deposit')),
    "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "amount" NUMERIC NOT NULL CHECK("amount" !=0),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("card_id") REFERENCES "cards"("id"),
    FOREIGN KEY ("station_id") REFERENCES "stations"("id")
);

