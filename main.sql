-- Create the database
CREATE DATABASE IF NOT EXISTS world_data;
USE world_data;

-- Create the table for continents
CREATE TABLE continents (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create the table for countries
CREATE TABLE countries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    continent_id INT,
    capital VARCHAR(100),
    FOREIGN KEY (continent_id) REFERENCES continents(id) ON DELETE CASCADE
);

-- Create the table for languages
CREATE TABLE languages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create a junction table for the many-to-many relationship between countries and languages
CREATE TABLE country_languages (
    country_id INT,
    language_id INT,
    PRIMARY KEY (country_id, language_id),
    FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE CASCADE,
    FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE
);

-- Insert data into continents table
INSERT INTO continents (name) VALUES ('Africa'), ('Asia'), ('Europe'), ('North America'), ('South America'), ('Australia'), ('Antarctica');

-- Insert data into countries table with their capitals
INSERT INTO countries (name, continent_id, capital) VALUES
('Algeria', 1, 'Algiers'),
('France', 3, 'Paris'),
('United States', 4, 'Washington, D.C.');

-- Insert data into languages table
INSERT INTO languages (name) VALUES ('Arabic'), ('French'), ('English'), ('Spanish');

-- Insert country-language relationships
INSERT INTO country_languages (country_id, language_id) VALUES
(1, 1),  -- Algeria speaks Arabic
(1, 2),  -- Algeria also speaks French
(2, 2),  -- France speaks French
(3, 3);  -- United States speaks English

-- Insert additional countries in Europe with their capitals
INSERT INTO countries (name, continent_id, capital) VALUES
('Germany', 3, 'Berlin'),
('Spain', 3, 'Madrid'),
('Italy', 3, 'Rome'),
('United Kingdom', 3, 'London'),
('Netherlands', 3, 'Amsterdam'),
('Belgium', 3, 'Brussels'),
('Switzerland', 3, 'Bern'),
('Austria', 3, 'Vienna');

-- Insert additional languages spoken in Europe
INSERT INTO languages (name) VALUES
('German'),
('Italian'),
('Dutch');

-- Insert country-language relationships for European countries
INSERT INTO country_languages (country_id, language_id) VALUES
(4, 3),  -- Germany speaks German
(5, 4),  -- Spain speaks Spanish
(6, 5),  -- Italy speaks Italian
(7, 3),  -- United Kingdom speaks English
(8, 6),  -- Netherlands speaks Dutch
(9, 2),  -- Belgium speaks French
(9, 6),  -- Belgium also speaks Dutch
(10, 3),  -- Switzerland speaks German
(10, 2),  -- Switzerland speaks French
(10, 5),  -- Switzerland also speaks Italian
(11, 3);  -- Austria speaks German

