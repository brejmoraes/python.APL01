 -- Apaga O Banco de dados caso ele já exista.
 -- DROP DATABASE IF EXISTS db_items;
 
 -- Cria o banco de dados com atenção à tabela de caractares.
 CREATE DATABASE db_items 
	CHARACTER SET utf8mb4 
	COLLATE utf8mb4_general_ci;
    
-- selecionar o banco de dados.
USE db_items;
-- Cria a tabela 'use" conforme o modelo.
 CREATE TABLE user (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    use_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_name VARCHAR(127) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARCHAR(63) NOT NULL,
    user_birth DATE,
    user_status ENUM('on', 'off') DEFAULT 'on'
);


-- insere dados em 'user'.
INSERT INTO user (user_name,user_email,user_password,user_birth) VALUE 
('brendon jardim','brendonjmoraes@gmail.com','123','2006-09-09'),
('ana carolina','caroljmoraes@gmail.com','456','2007-04-26'),
('maicon ferreira','maiconfmoraes@gmail.com','789','1979-06-03');

-- Lista a inserção em 'user'.
SELECT 
    *
FROM
    user
WHERE
    user_status = 'on'
ORDER BY 'use_name';
-- Apagar o 'maicon'.
 UPDATE user SET user_status = 'off' WHERE user_id = '1';