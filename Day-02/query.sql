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
SELECT "title" FROM "booker" WHERE "title" LIKE '%love%';
-- it will return all the titles that contain the word "love" anywhere in the title.
SELECT "title" FROM "booker" WHERE "title" LIKE 'The%';
-- it will return all the titles that start with "The". 
SELECT "title" FROM "booker" WHERE "title" LIKE '%ing';
-- it will return all the titles that end with "ing".
SELECT "title" FROM "booker" WHERE "title" LIKE 'THE%love%';
-- it will return all the titles that start with "THE" and contain "love" anywhere in the title.
SELECT "title" FROM "booker" WHERE "title" LIKE 'a_tumn';
-- it will return all the titles that have "a" followed by any single character and then "tumn". So it will match "Autumn" but not "Autum" or "Autumns" it will not match with The autumn also title should be autumn.
SELECT "title" FROM "booker" WHERE "title" LIKE 'a_____'; 
-- above line has 5 underscores, it will return all the titles that have "a" followed by any five characters. So it will match with autumn
-- o: For ranges : we use > , <,>=,<= ,BETWEEN;
SELECT "title" , "year" FROM "booker" WHERE "year">=2018 AND "year"<=2023;
-- both line are same
SELECT "title" , "year" FROM "booker" WHERE "year" BETWEEN 2018 AND 2023;
--g : if i talk about case sensitive then it depends on keyword suppose for = operator it is case sensitive but for LIKE operator it is not case sensitive.
-- r: show 10 latest books ordered on year?
SELECT "title","year" FROM "booker" ORDER BY "year" DESC LIMIT 10; 
SELECT "title" FROM "booker" ORDER BY "title";
-- it will return all the titles sorted in ascending order (A to Z).
SELECT "title" FROM "booker" ORDER BY "title" DESC;
-- it will return all the titles sorted in descending order (Z to A).
