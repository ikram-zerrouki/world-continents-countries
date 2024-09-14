-- Insert data into countries table with their capitals (South American countries)
INSERT INTO countries (name, continent_id, capital) VALUES
('Brazil', 5, 'Brasília'),
('Argentina', 5, 'Buenos Aires'),
('Chile', 5, 'Santiago'),
('Colombia', 5, 'Bogotá'),
('Peru', 5, 'Lima'),
('Venezuela', 5, 'Caracas'),
('Uruguay', 5, 'Montevideo'),
('Paraguay', 5, 'Asunción'),
('Bolivia', 5, 'Sucre'),
('Ecuador', 5, 'Quito');

-- Insert data into languages table (South American languages)
INSERT INTO languages (name) VALUES
('Portuguese'),  -- Spoken in Brazil
('Spanish'),     -- Spoken in Argentina, Chile, Colombia, Peru, Venezuela, Uruguay, Paraguay, Bolivia, Ecuador
('Guarani'),     -- Spoken in Paraguay
('Quechua');     -- Spoken in Peru, Bolivia

-- Insert country-language relationships for South American countries
INSERT INTO country_languages (country_id, language_id) VALUES
(24, 14),  -- Brazil speaks Portuguese
(25, 15),  -- Argentina speaks Spanish
(26, 15),  -- Chile speaks Spanish
(27, 15),  -- Colombia speaks Spanish
(28, 15),  -- Peru speaks Spanish
(28, 17),  -- Peru also speaks Quechua
(29, 15),  -- Venezuela speaks Spanish
(30, 15),  -- Uruguay speaks Spanish
(31, 15),  -- Paraguay speaks Spanish
(31, 16),  -- Paraguay also speaks Guarani
(32, 15),  -- Bolivia speaks Spanish
(32, 17),  -- Bolivia also speaks Quechua
(33, 15);  -- Ecuador speaks Spanish
