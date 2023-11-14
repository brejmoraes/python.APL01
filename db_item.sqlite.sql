-- Apaga as tabelas caso existam.
-- CUIDADO! Isso destrói todos os dados do banco.
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS owner;

-- Cria a tabela 'owner'.
CREATE TABLE owner (
    owner_id INTEGER PRIMARY KEY AUTOINCREMENT,
    owner_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    owner_name TEXT,
    owner_email TEXT,
    owner_password TEXT,
    owner_birth DATE,
    owner_status TEXT DEFAULT 'on',
    owner_field1 TEXT,
    owner_field2 TEXT
);

-- Popular 'owner' com dados 'fake' aleatórios.
INSERT INTO owner (owner_name, owner_email, owner_password, owner_birth, owner_date)
VALUES 
    ('João Silva', 'joao@example.com', 'senha321', '1987-08-15', '2023-01-15 10:30:00'),
    ('Maria Oliveira', 'maria@example.com', 'senha654', '1992-03-25', '2023-02-01 14:45:00'),
    ('Carlos Santos', 'carlos@example.com', 'senha987', '1980-11-05', '2023-02-10 08:00:00'),
	('Luferat', 'luferat@example.com', 'senha123', '1990-01-01', '2023-03-18 12:13:14'),
    ('Ana Souza', 'ana@example.com', 'senha456', '1985-05-20', '2023-03-21 18:19:00'),
    ('Pedro Lima', 'pedro@example.com', 'senha789', '1988-12-10', '2023-04-10 21:31:41');
	
	
	
	CREATE TABLE item(
	item_id INTEGER PRIMARY KEY AUTOINCREMENT,
	item_date timestamp DEFAULT CURRENT_TIMESTAMP,
	item_name TEXT,
	item_description TEXT,
	item_location TEXT,
	item_owner INTEGER,
	item_status TEXT DEFAULT 'on',
	item_field1 TEXT,
    item_field2 TEXT,
	FOREIGN KEY (item_owner) REFERENCES owner (owner_id)
	);
	
	INSERT INTO item (item_date, item_name, item_description, item_location, item_owner, item_status)
VALUES
    ('2023-11-13 10:00:00', 'Item 1', 'Descrição do Item 1', 'Localização 1', 1, 'on'),
    ('2023-11-14 12:30:00', 'Item 2', 'Descrição do Item 2', 'Localização 2', 2, 'on'),
    ('2023-11-15 15:45:00', 'Item 3', 'Descrição do Item 3', 'Localização 3', 3, 'on'),
    ('2023-11-16 09:20:00', 'Item 4', 'Descrição do Item 4', 'Localização 4', 1, 'on'),
    ('2023-11-17 14:00:00', 'Item 5', 'Descrição do Item 5', 'Localização 5', 2, 'on');

	
