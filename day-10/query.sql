.schema
.tables
select * from authors;
select * from authored;
select * from books;
select * from ratings
-- o suppose i want to add title and name at one place then we have to use join in 3 tables
select name, title from authors join authored ON authors.id=authored.author_id join books ON authored.book_id=books.id;

-- this will not save so for creating a vitual table we will use views
-- r view:
-- A view is a virtual table defined by a query.
-- Views are useful for:
-- simplifying: putting together data from different tables to be queried more simply,
-- aggregating: running aggregate functions, like finding the sum, and storing the results,
-- partitioning: dividing data into logical pieces,
-- securing: hiding columns that should be kept secure. 
CREATE VIEW  "longlist" AS SELECT name, title FROM authors JOIN authored ON authors.id=authored.author_id JOIN books ON authored.book_id=books.id;
select * from longlist;
select title from longlist where name IS'Anna Burns';
