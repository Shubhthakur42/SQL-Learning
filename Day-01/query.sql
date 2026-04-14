CREATE TABLE IF NOT EXISTS booker (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    year INTEGER,
    author TEXT,
    title TEXT,
    country TEXT,
    winner TEXT
);
SELECT name FROM sqlite_master WHERE type='table';
INSERT INTO booker (year, author, title, country, winner) VALUES
(2020, 'Douglas Stuart', 'Shuggie Bain', 'UK', 'YES'),
(2019, 'Margaret Atwood', 'The Testaments', 'Canada', 'YES'),
(2019, 'Bernardine Evaristo', 'Girl, Woman, Other', 'UK', 'YES'),
(2018, 'Anna Burns', 'Milkman', 'UK', 'YES'),
(2017, 'George Saunders', 'Lincoln in the Bardo', 'USA', 'YES'),
(2016, 'Paul Beatty', 'The Sellout', 'USA', 'YES'),
(2015, 'Marlon James', 'A Brief History of Seven Killings', 'Jamaica', 'YES'),
(2014, 'Richard Flanagan', 'The Narrow Road to the Deep North', 'Australia', 'YES'),
(2013, 'Eleanor Catton', 'The Luminaries', 'New Zealand', 'YES'),
(2012, 'Hilary Mantel', 'Bring Up the Bodies', 'UK', 'YES'),

(2011, 'Julian Barnes', 'The Sense of an Ending', 'UK', 'YES'),
(2010, 'Howard Jacobson', 'The Finkler Question', 'UK', 'YES'),
(2009, 'Hilary Mantel', 'Wolf Hall', 'UK', 'YES'),
(2008, 'Aravind Adiga', 'The White Tiger', 'India', 'YES'),
(2007, 'Anne Enright', 'The Gathering', 'Ireland', 'YES'),

(2012, 'Will Self', 'Umbrella', 'UK', 'NO'),
(2018, 'Esi Edugyan', 'Washington Black', 'Canada', 'NO'),
(2017, 'Ali Smith', 'Autumn', 'UK', 'NO'),
(2016, 'Deborah Levy', 'Hot Milk', 'UK', 'NO'),
(2015, 'Tom McCarthy', 'Satin Island', 'UK', 'NO'),

(2014, 'Neel Mukherjee', 'The Lives of Others', 'India', 'NO'),
(2013, 'Colm Toibin', 'The Testament of Mary', 'Ireland', 'NO'),
(2011, 'AD Miller', 'Snowdrops', 'UK', 'NO'),
(2010, 'Peter Carey', 'Parrot and Olivier in America', 'Australia', 'NO'),
(2009, 'JM Coetzee', 'Summertime', 'South Africa', 'NO');
SELECT COUNT(*) FROM booker;
-- TODO :Important
-- * : Information
-- ! : Question
-- TODO SELECT➡️ Retrieve (fetch) data from a database table
-- it will return all the columns and rows from the booker table.
SELECT * FROM "booker";
-- If we want we can print title only
SELECT "title" FROM "booker";
-- We can also print title and author
SELECT "title", "author" FROM "booker";
-- *: We use double quotes for column names and single quotes for string values in SQL.

-- * We arite upper case for SQL keywords to make it easier to read, but it's not mandatory. You can write SQL in lowercase as well.
-- Todo : LIMIT➡️ To limit the number of rows returned by a query, we can use the LIMIT clause. 
SELECT "title", "author" FROM "booker" LIMIT 5;
-- Todo : WHERE➡️ To filter the results based on specific conditions, we can use the WHERE clause.
SELECT "title", "author" FROM "booker" WHERE "year" = 2020;
