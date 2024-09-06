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
