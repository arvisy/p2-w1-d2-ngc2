-- Tabel Heroes
CREATE TABLE Heroes (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Universe VARCHAR(50) NOT NULL,
    Skill VARCHAR(100),
    ImageURL VARCHAR(255)
);

-- Tabel Villain
CREATE TABLE Villain (
    ID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Universe VARCHAR(50) NOT NULL,
    ImageURL VARCHAR(255)
);

-- Menambahkan data ke tabel Heroes
INSERT INTO Heroes (ID, Name, Universe, Skill, ImageURL)
VALUES
    (1, 'Superman', 'DC', 'Flight, Super Strength', 'superman.jpg'),
    (2, 'Spiderman', 'Marvel', 'Wall-Crawling, Web-shooting', 'spiderman.jpg'),
    (3, 'Wonder Woman', 'DC', 'Lasso of Truth, Superhuman Strength', 'wonderwoman.jpg');

-- Menambahkan data ke tabel Villain
INSERT INTO Villain (ID, Name, Universe, ImageURL)
VALUES
    (1, 'Joker', 'DC', 'joker.jpg'),
    (2, 'Thanos', 'Marvel', 'thanos.jpg'),
    (3, 'Lex Luthor', 'DC', 'lexluthor.jpg');