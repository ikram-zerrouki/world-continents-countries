-- Insert data into countries table with their capitals (Complete North American countries)
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
('Costa Rica', 4, 'San José'),
('Bahamas', 4, 'Nassau'),
('Barbados', 4, 'Bridgetown'),
('Belize', 4, 'Belmopan'),
('Dominica', 4, 'Roseau'),
('Dominican Republic', 4, 'Santo Domingo'),
('El Salvador', 4, 'San Salvador'),
('Grenada', 4, 'St. George\'s'),
('Haiti', 4, 'Port-au-Prince'),
('Saint Kitts and Nevis', 4, 'Basseterre'),
('Saint Lucia', 4, 'Castries'),
('Saint Vincent and the Grenadines', 4, 'Kingstown'),
('Trinidad and Tobago', 4, 'Port of Spain');

-- Insert data into languages table (Complete North American languages)
INSERT INTO languages (name) VALUES
('English'),    -- Spoken in United States, Canada, Jamaica, Bahamas, Belize, Barbados, etc.
('French'),     -- Spoken in Canada, Haiti
('Spanish'),    -- Spoken in Mexico, Cuba, Panama, Guatemala, Honduras, Nicaragua, Costa Rica, Dominican Republic, El Salvador
('Creole'),     -- Spoken in Jamaica, Haiti
('Kriol');      -- Spoken in Belize

-- Insert country-language relationships for Complete North American countries
INSERT INTO country_languages (country_id, language_id) VALUES
(3, 3),  -- United States speaks English
(34, 3), -- Canada speaks English
(34, 2), -- Canada also speaks French
(35, 15),-- Mexico speaks Spanish
(36, 15),-- Cuba speaks Spanish
(37, 15),-- Panama speaks Spanish
(38, 3), -- Jamaica speaks English
(38, 18),-- Jamaica also speaks Creole
(39, 15),-- Guatemala speaks Spanish
(40, 15),-- Honduras speaks Spanish
(41, 15),-- Nicaragua speaks Spanish
(42, 15),-- Costa Rica speaks Spanish
(43, 3), -- Bahamas speaks English
(44, 3), -- Barbados speaks English
(45, 3), -- Belize speaks English
(45, 19),-- Belize also speaks Kriol
(46, 3), -- Dominica speaks English
(47, 15),-- Dominican Republic speaks Spanish
(48, 15),-- El Salvador speaks Spanish
(49, 3), -- Grenada speaks English
(50, 18),-- Haiti speaks Creole
(50, 2), -- Haiti also speaks French
(51, 3), -- Saint Kitts and Nevis speaks English
(52, 3), -- Saint Lucia speaks English
(53, 3), -- Saint Vincent and the Grenadines speaks English
(54, 3); -- Trinidad and Tobago speaks English
