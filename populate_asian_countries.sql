-- Insert data into countries table with their capitals (Asian countries)
INSERT INTO countries (name, continent_id, capital) VALUES
('China', 2, 'Beijing'),
('India', 2, 'New Delhi'),
('Japan', 2, 'Tokyo'),
('South Korea', 2, 'Seoul'),
('Indonesia', 2, 'Jakarta'),
('Saudi Arabia', 2, 'Riyadh'),
('Vietnam', 2, 'Hanoi'),
('Thailand', 2, 'Bangkok'),
('Philippines', 2, 'Manila'),
('Malaysia', 2, 'Kuala Lumpur');

-- Insert data into languages table (Asian languages)
INSERT INTO languages (name) VALUES
('Mandarin'),  -- Spoken in China
('Hindi'),     -- Spoken in India
('Japanese'),  -- Spoken in Japan
('Korean'),    -- Spoken in South Korea
('Indonesian'),-- Spoken in Indonesia
('Arabic'),    -- Spoken in Saudi Arabia
('Vietnamese'),-- Spoken in Vietnam
('Thai'),      -- Spoken in Thailand
('Tagalog'),   -- Spoken in Philippines
('Malay');     -- Spoken in Malaysia

-- Insert country-language relationships for Asian countries
INSERT INTO country_languages (country_id, language_id) VALUES
(4, 5),  -- China speaks Mandarin
(5, 6),  -- India speaks Hindi
(6, 7),  -- Japan speaks Japanese
(7, 8),  -- South Korea speaks Korean
(8, 9),  -- Indonesia speaks Indonesian
(9, 3),  -- Saudi Arabia speaks Arabic
(10, 10),-- Vietnam speaks Vietnamese
(11, 11),-- Thailand speaks Thai
(12, 12),-- Philippines speaks Tagalog
(13, 13);-- Malaysia speaks Malay
