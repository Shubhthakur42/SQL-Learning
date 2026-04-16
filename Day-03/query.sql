-- r: show 10 latest books ordered on year?
-- g : ORDER BY : To sort the results of a query based on one or more columns, we can use the ORDER BY clause. By default, it sorts in ascending order (A to Z for text and lowest to highest for numbers). To sort in descending order, we can use the DESC keyword.
SELECT "title","year" FROM "booker" ORDER BY "year" DESC LIMIT 10; 
SELECT "title" FROM "booker" ORDER BY "title";
-- it will return all the titles sorted in ascending order (A to Z).
SELECT "title" FROM "booker" ORDER BY "title" DESC;
-- it will return all the titles sorted in descending order (Z to A).
-- o : NEW concept
-- keywords like  COUNT,AVG,MIN,MAX,SUM returns some value based on rows
SELECT AVG("year") FROM "booker";
-- it will return the average year of all the books in the booker table.
SELECT ROUND(AVG("year"),1) FROM "booker";
-- it will return the average year of all the books in the booker table rounded to one decimal place, But the problem is u see name as Round(AVG(year),1) it is not good for presentation so we can use AS keyword to give it a name.
SELECT ROUND(AVG("year"),1) AS "Average Year" FROM "booker";
SELECT MAX("year") As "Latest Year" FROM "booker";
SELECT MAX("title"), MIN("title") FROM "booker";
-- The maximum title is the one that comes last in alphabetical order, and the minimum title is the one that comes first in alphabetical order.
SELECT COUNT(*) AS "Total Books" FROM "booker";
-- it will return the total number of books in the booker table.
SELECT COUNT("author") FROM "booker";
-- it will return the total number of authors in the booker table, but if there are any NULL values in the author column, they will not be counted. If you want to count all rows regardless of NULL values, you can use COUNT(*) instead.
SELECT COUNT(DISTINCT "author") AS "Unique Authors" FROM "booker";
-- o : New concept : Relational database ,One to one ,One to many ,Many to many
