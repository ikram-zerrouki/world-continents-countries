-- Insert data into countries table with their capitals (African countries)
INSERT INTO countries (name, continent_id, capital) VALUES
('Nigeria', 1, 'Abuja'),
('South Africa', 1, 'Pretoria'),
('Egypt', 1, 'Cairo'),
('Kenya', 1, 'Nairobi'),
('Ghana', 1, 'Accra'),
('Morocco', 1, 'Rabat'),
('Tunisia', 1, 'Tunis'),
('Ethiopia', 1, 'Addis Ababa'),
('Angola', 1, 'Luanda'),
('Ivory Coast', 1, 'Yamoussoukro');

-- Insert data into languages table (African languages)
INSERT INTO languages (name) VALUES
('English'),    -- Spoken in Nigeria, South Africa, Ghana
('Arabic'),     -- Spoken in Egypt, Morocco, Tunisia
('Swahili'),    -- Spoken in Kenya
('Amharic'),    -- Spoken in Ethiopia
('Portuguese'), -- Spoken in Angola
('French');     -- Spoken in Ivory Coast, Tunisia, Morocco

-- Insert country-language relationships for African countries
INSERT INTO country_languages (country_id, language_id) VALUES
(14, 3),  -- Nigeria speaks English
(15, 3),  -- South Africa speaks English
(16, 4),  -- Egypt speaks Arabic
(17, 8),  -- Kenya speaks Swahili
(18, 3),  -- Ghana speaks English
(19, 4),  -- Morocco speaks Arabic
(19, 6),  -- Morocco also speaks French
(20, 4),  -- Tunisia speaks Arabic
(20, 6),  -- Tunisia also speaks French
(21, 9),  -- Ethiopia speaks Amharic
(22, 10), -- Angola speaks Portuguese
(23, 6);  -- Ivory Coast speaks French
