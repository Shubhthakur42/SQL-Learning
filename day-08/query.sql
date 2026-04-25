CREATE TABLE "collections" (
    "id" INTEGER,
    "title" TEXT NOT NULL,
    "accession_number" TEXT NOT NULL UNIQUE,
    "acquired" NUMERIC,
    PRIMARY KEY("id")
);
-- The SQL statement INSERT INTO is used to insert a row of data into a given table.
INSERT INTO "collections" ("id", "title", "accession_number", "acquired")
VALUES (1, 'Profusion of flowers', '56.257', '1956-04-12');
-- Inserting Multiple Rows
INSERT INTO "collections" ("title", "accession_number", "acquired") 
VALUES 
('Imaginative landscape', '56.496', NULL),
('Peonies and butterfly', '06.1899', '1906-01-01');
-- How to import a csv file directly into database
-- museum.csv
title,accession_number,acquired
Profusion of flowers,56.257,1956-04-12
Farmers working at dawn,11.6152,1911-08-03
Spring outing,14.76,1914-01-08
Imaginative landscape,56.496,
Peonies and butterfly,06.1899,1906-01-01
-- first make temp file and store all the value then copy all the details into collections table
.import --csv mfa.csv temp
-- then
INSERT INTO "collections" ("title", "accession_number", "acquired") 
SELECT "title", "accession_number", "acquired" FROM "temp";
-- Deleting data
DELETE FROM "collections";
DELETE FROM "collections" WHERE "title" = 'Spring outing';
DELETE FROM "collections" WHERE "acquired" IS NULL;
DELETE FROM "collections" WHERE "acquired" < '1909-01-01';
-- Deleting the foreign key constraints
ON DELETE RESTRICT: This restricts us from deleting IDs when the foreign key constraint is violated.
ON DELETE NO ACTION: This allows the deletion of IDs that are referenced by a foreign key and nothing happens.
ON DELETE SET NULL: This allows the deletion of IDs that are referenced by a foreign key and sets the foreign key references to NULL.
ON DELETE SET DEFAULT: This does the same as the previous, but allows us to set a default value instead of NULL.
ON DELETE CASCADE: This allows the deletion of IDs that are referenced by a foreign key and also proceeds to cascadingly delete the referencing foreign key rows. 
    For example, if we used this to delete an artist ID, all the artist’s affiliations with the artwork would also be deleted from the created table.
