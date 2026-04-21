SELECT * FROM books;
SELECT * FROM authors;
SELECT * FROM publishers;
SELECT * FROM ratings;
SELECT * FROM awards;
SELECT * FROM authored;
-- Questions:
-- 1.Find books that are winners
SELECT "title" FROM "books" WHERE id IN (
    SELECT "book_id" FROM "awards" WHERE "winner" ='YES');
-- So this is use of IN Keyword, which is used to check if a value exists in a set of values returned by a subquery. In this a lot of data is returned by the subquery, and we are checking if the id of the book is in that set of values. If it is, then we are selecting the title of that book.

-- 2.Find authors who have written winning books
SELECT "name" FROM "authors" WHERE id In(
    SELECT "author_id" FROM "authored" WHERE book_id IN(
        SELECT "book_id" FROM "awards" WHERE "winner" ='YES'));

--3. Find books published by publisher 'Penguin'

SELECT "title" FROM "books" WHERE "publisher_id" = (
    SELECT "id" FROM "publishers" WHERE "name"='Penguin');

--Find books with rating greater than average rating

SELECT title FROM books WHERE id IN(
    SELECT book_id FROM ratings WHERE rating > (
        SELECT AVG(rating) FROM ratings));

-- o JOIN topic :
SELECT * from authors a INNER JOIN publishers p ON a.id=p.id;
SELECT * from authors a LEFT JOIN publishers p ON a.id=p.id;

--o : SETS topic 
SELECT title from books UNION SELECT name FROM authors;  
