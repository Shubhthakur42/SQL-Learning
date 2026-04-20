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
