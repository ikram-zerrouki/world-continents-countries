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

