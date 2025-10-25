CREATE TABLE authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_title VARCHAR(150) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);
INSERT INTO authors (author_name, email)
VALUES
('Chetan Bhagat', 'chetan@example.com'),
('J.K. Rowling', 'jkrowling@example.com');

INSERT INTO books (book_title, author_id)
VALUES
('Five Point Someone', 1),
('Harry Potter and the Sorcerer''s Stone', 2);
SELECT a.author_name, b.book_title
FROM authors a
JOIN books b ON a.author_id = b.author_id;
