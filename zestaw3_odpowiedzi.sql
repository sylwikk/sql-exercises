-- 1
CREATE DATABASE firma_budowlana_db;

CREATE TABLE pracownicy (
id INT PRIMARY KEY AUTO_INCREMENT,
imie VARCHAR(255) NOT NULL,
nazwisko VARCHAR(255) NOT NULL,
stanowisko VARCHAR(255) NOT NULL
);

CREATE TABLE oddzialy (
id INT PRIMARY KEY AUTO_INCREMENT,
miasto VARCHAR(255) NOT NULL,
specjalizacja VARCHAR(255)
);

CREATE TABLE dostawcy (
id INT PRIMARY KEY AUTO_INCREMENT,
nazwa VARCHAR(255) NOT NULL,
miasto VARCHAR(255) NOT NULL,
koszt INT NOT NULL
);

CREATE TABLE realizacje (
id INT PRIMARY KEY AUTO_INCREMENT,
miasto VARCHAR(255) NOT NULL,
koszt INT NOT NULL,
blad VARCHAR(255)
);

SELECT * FROM pracownicy;
SELECT * FROM oddzialy;
SELECT * FROM dostawcy;
SELECT * FROM realizacje;

-- 2
INSERT INTO pracownicy (imie, nazwisko, stanowisko) VALUES
("Jan", "Kowalski", "murarz"),
("Anna", "Nowak", "tynkarz"),
("Alicja", "Kowalska", "kierownik");

-- 3
INSERT INTO dostawcy (nazwa, miasto, koszt) VALUES
("Janex", "Szczecin", 4500),
("Marcinex", "Warszawa", 5000),
("Dawidex", "Katowice", 4000);

-- 4
INSERT INTO realizacje (miasto, koszt) VALUES
("Katowice", 2000000),
("Będzin", 1500000),
("Sosnowiec", 1800000);

-- 5
UPDATE dostawcy 
SET nazwa = "Dawidex Corporation"
WHERE nazwa = "Dawidex";

SET sql_safe_updates = 1;

-- 6
UPDATE pracownicy 
SET imie = "Dorota"
WHERE imie = "Alicja";

-- 7
ALTER TABLE realizacje CHANGE blad miesiac VARCHAR(255);

-- 8
ALTER TABLE realizacje CHANGE miesiac miesiac VARCHAR(100);

-- 9
UPDATE realizacje 
SET miesiac = "Maj";

-- 10
DELETE FROM realizacje WHERE miasto = "Sosnowiec";