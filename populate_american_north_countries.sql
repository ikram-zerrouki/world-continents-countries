-- Insert data into countries table with their capitals (North American countries)
INSERT INTO countries (name, continent_id, capital) VALUES
('United States', 4, 'Washington, D.C.'),
('Canada', 4, 'Ottawa'),
('Mexico', 4, 'Mexico City'),
('Cuba', 4, 'Havana'),
('Panama', 4, 'Panama City'),
('Jamaica', 4, 'Kingston'),
('Guatemala', 4, 'Guatemala City'),
('Honduras', 4, 'Tegucigalpa'),
('Nicaragua', 4, 'Managua'),
('Costa Rica', 4, 'San José');

-- Insert data into languages table (North American languages)
INSERT INTO languages (name) VALUES
('English'),    -- Spoken in United States, Canada, Jamaica
('French'),     -- Spoken in Canada
('Spanish'),    -- Spoken in Mexico, Cuba, Panama, Guatemala, Honduras, Nicaragua, Costa Rica
('Creole');     -- Spoken in Jamaica

-- Insert country-language relationships for North American countries
INSERT INTO country_languages (country_id, language_id) VALUES
(3, 3),  -- United States speaks English
(34, 3), -- Canada speaks English
(34, 2), -- Canada also speaks French
(35, 15),-- Mexico speaks Spanish
(36, 15),-- Cuba speaks Spanish
(37, 15),-- Panama speaks Spanish
(38, 15),-- Jamaica speaks English
(38, 18),-- Jamaica also speaks Creole
(39, 15),-- Guatemala speaks Spanish
(40, 15),-- Honduras speaks Spanish
(41, 15),-- Nicaragua speaks Spanish
(42, 15);-- Costa Rica speaks Spanish
