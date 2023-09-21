CREATE TABLE usuarios_nova (
  id INT,
  nome VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
  email VARCHAR(255) NOT NULL UNIQUE COMMENT 'Endereço de e-mail do usuário',
  data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário',
  endereco VARCHAR(100) NOT NULL COMMENT 'Endereço do Cliente'
);

INSERT INTO usuarios_nova
SELECT * from usuarios;

DROP table usuarios;

ALTER TABLE usuarios_nova RENAME usuarios;

ALTER TABLE usuarios MODIFY COLUMN endereco VARCHAR(100);