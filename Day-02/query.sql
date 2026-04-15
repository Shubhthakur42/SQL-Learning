-- =  : checks if values are equal
-- != : checks if values are not equal
-- <> : checks if values are not equal

SELECT "title", "winner" FROM "booker" WHERE "winner" <> 'YES';
--Use of NOT keyword: To negate
SELECT "title", "winner" FROM "booker" WHERE NOT "winner" = 'YES';

-- r: find books in 2022 or 2023 and winner must be YES?
SELECT "title","author","year","winner" FROM "booker" WHERE ("year" = 2018 OR "year"= 2023) AND "winner" = 'NO';
-- IS NULL : which does not exist in database
-- IS NOT NULL : Ehich exist 
SELECT "title" FROM "booker" WHERE "country" IS NULL;
SELECT "title" FROM "booker" WHERE "country" IS NOT NULL;
-- LIKE : To search for a specific pattern in a column, we can use the LIKE operator.when LIKE combine with % it will match any sequence of characters and _ will match any single character.
