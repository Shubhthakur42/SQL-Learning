-- Authors
CREATE TABLE authors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

-- Books
CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    year INTEGER,
    country TEXT
);

-- Publishers (1:M with books)
CREATE TABLE publishers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

-- Ratings (1:1 with books)
CREATE TABLE ratings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    book_id INTEGER UNIQUE,
    rating INTEGER,
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Awards (1:M with books)
CREATE TABLE awards (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    book_id INTEGER,
    winner TEXT,
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Authored (M:N between authors & books)
CREATE TABLE authored (
    author_id INTEGER,
    book_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);
INSERT INTO authors (name) VALUES
('Douglas Stuart'),
('Margaret Atwood'),
('Bernardine Evaristo'),
('Anna Burns'),
('George Saunders'),
('Aravind Adiga'),
('Hilary Mantel');

INSERT INTO publishers (name) VALUES
('Penguin'),
('HarperCollins'),
('Vintage'),
('Random House');

INSERT INTO books (title, year, country, publisher_id) VALUES
('Shuggie Bain', 2020, 'UK', 1),
('The Testaments', 2019, 'Canada', 2),
('Girl, Woman, Other', 2019, 'UK', 1),
('Milkman', 2018, 'UK', 3),
('Lincoln in the Bardo', 2017, 'USA', 4),
('The White Tiger', 2008, 'India', 2),
('Wolf Hall', 2009, 'UK', 1);

INSERT INTO authored (author_id, book_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),

-- Many-to-many examples
(2,7),  -- Margaret also linked to Wolf Hall
(7,2);  -- Hilary linked to Testaments

INSERT INTO awards (book_id, winner) VALUES
(1,'YES'),
(2,'YES'),
(3,'YES'),
(4,'YES'),
(5,'YES'),
(6,'YES'),
(7,'YES'),

(2,'NO'),
(3,'NO');

INSERT INTO ratings (book_id, rating) VALUES
(1, 9),
(2, 8),
(3, 9),
(4, 7),
(5, 8),
(6, 9),
(7, 10);

