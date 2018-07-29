USE system31;

INSERT INTO Condominio 
	(codigo, nome, uf, cidade, bairro, rua, numero, cep, qtd_imoveis)
VALUES	
	(DEFAULT, 'Vale Do Sol', 'PB', 'Campina Grande', 'Centro', 'Maria das Graças', 100, 58418215, 5),
    (DEFAULT, 'Lua Mar', 'PB', 'Campina Grande', 'São José', 'Av. professor Almeida Barreto', 150, 58400328, 7),
    (DEFAULT, 'Riacho', 'PB', 'Campina Grande', 'Dinamérica', 'João Fonseca', 2510, 58418000, 10),
    (DEFAULT, 'Beija Flor', 'PE', 'Belo Jardim', 'Centro', 'Siqueira Campos', 1250, 55155250, 15),
    (DEFAULT, 'Rio Dourado', 'PB', 'João Pessoa', 'Cabo Branco', 'Lirios dos Campos', 1234, 50000123, 20);
    

INSERT INTO Administrador
	(cpf, rg, nome, sexo, email, telefone, senha, data_nascimento, rua, num_home, bairro, uf, cep, cidade, cod_condom)
VALUES	
	('09915396400', '387945912', 'João', 'M', 'joao@hotmail.com', '81989541212', '123456', '1995-09-12', 'Nilton Senhorinho', 50, 'Centro', 'PB', 77777888, 'Campina Grande', 1),
    ('09915391234', '387945123', 'Maria', 'F', 'maria@hotmail.com', '81989540000', '654321', '1995-12-30', 'Arruda Vasconscelos', 100, 'Dinamérica', 'PB',  99999888,'Campina Grande', 2),
    ('09915312345', '387941234', 'José', 'M', 'jose@hotmail.com', '81989541111', '000000', '1955-01-22', 'Governador Valadares', 234, 'Bodocongó', 'PB', 66666888, 'Campina Grande', 3),
    ('09915123456', '387912345', 'Francisca', 'F', 'francisca@hotmail.com', '81989542222', '102030', '1980-10-13', 'Maria Lidia', 510, 'São Pedro', 'PE', 55555888,'Belo Jardim', 4),
    ('09911234567', '387123456', 'Antonio', 'M', 'antonio@hotmail.com', '81989543333', '5555555', '1990-05-20', 'Torres Maciel', 201, 'Cabo Branco', 'PB', 44444888, 'João Pessoa', 5);
    
INSERT INTO Imovel
	(numero_imovel, cod_condom, taxa_condominio, valor_aluguel, vagas_garagem, qtd_quartos, qtd_banheiros, qtd_suites, varanda, aluguel_ou_venda, area_metros_quadrado)
VALUES
	(1, 1, 100.00, 500.00, 1, 2, 1, 0, FALSE, 'A', 40),
    (2, 1, 100.00, 500.00, 1, 2, 1, 0, FALSE, 'A', 40),
    (3, 1, 100.00, 500.00, 1, 2, 1, 0, FALSE, 'A', 40),
    (4, 1, 100.00, 500.00, 1, 2, 1, 0, FALSE, 'A', 40),
    (5, 1, 100.00, 500.00, 1, 2, 1, 0, FALSE, 'A', 40),
    (10, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, 'A', 50),
    (20, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, 'A', 50),
    (30, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, 'A', 50),
    (40, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, 'A', 50),
    (50, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, 'A', 50),
    (60, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, 'A', 50),
    (70, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, 'A', 50),
    (101, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, 'V', 35),
    (102, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, 'V', 35),
    (103, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, 'V', 35),
    (104, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, 'V', 35),
    (105, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, 'V', 35),
    (106, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, 'V', 35),
    (107, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, 'V', 35),
    (108, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, 'V', 35),
    (109, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, 'V', 35),
    (110, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, 'V', 35),
    (201, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (202, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (203, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (204, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (205, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (206, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (207, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (208, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (209, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (210, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (211, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (212, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (213, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (214, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (215, 4, 300.00, 1000.00, 4, 5, 2, 3, FALSE, 'A', 95),
    (1001, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1002, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1003, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1004, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1005, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1006, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1007, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1008, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1009, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1010, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1011, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1012, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1013, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1014, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1015, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1016, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1017, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1018, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1019, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45),
    (1020, 5, 125.00, 480.00, 1, 1, 1, 1, FALSE, 'A', 45);
    
INSERT INTO Morador_titular
	(cpf, senha, nome, sexo, num_imovel, cod_condom, renda, sindico, email, telefone)
VALUES
    ('12345678955', DEFAULT, 'Bruno', 'M', 1, 1, 1000.00, FALSE, 'bruno@gmail.com', '83977551122'),
    ('12345678911', DEFAULT, 'Carlos', 'M', 2, 1, 1000.00, FALSE, 'carlos@gmail.com', '83977551122'),
    ('12345678944', DEFAULT, 'Samantha', 'F', 10, 2, 5000.00, FALSE, 'samantha@gmail.com', '83977551122'),
    ('12345678933', DEFAULT, 'Vinicius', 'M', 20, 2, 5000.00, FALSE, 'vinicius@gmail.com', '83977551122'),
    ('12345678922', DEFAULT, 'Rafaela', 'F', 101, 3, 4000.00, FALSE, 'rafaela@gmail.com', '83977551122'),
    ('12345678966', DEFAULT, 'Vitor', 'M', 102, 3, 4000.00, FALSE, 'vitor@gmail.com', '83977551122'),
    ('12345678988', DEFAULT, 'Vitoria', 'F', 201, 4, 10000.00, FALSE, 'vitoria@gmail.com', '83977551122'),
    ('12345678977', DEFAULT, 'Raul', 'M', 202, 4, 10000.00, FALSE, 'raul@gmail.com', '83977551122'),
    ('12345678999', DEFAULT, 'Marcela', 'F', 1001, 5, 1500.00, FALSE, 'marcela@gmail.com', '83977551122'),
    ('12345678123', DEFAULT, 'Carla', 'F', 1005, 5, 1500.00, FALSE, 'carla@gmail.com', '83977551122');
    
INSERT INTO Morador_dependendente
	(cpf, nome, sexo, email, telefone, cpf_titular)
VALUES
    ('00011122233', 'Fábio', 'M', 'fabio@academico.ifpb.edu.br', '835544332211', '12345678955'),
    ('00011122244', 'Sara', 'F', 'sara@academico.ifpb.edu.br', '835544332299', '12345678911'),
    ('00011122255', 'Vilma', 'F', 'vilma@academico.ifpb.edu.br', '835544332288', '12345678123');

INSERT INTO Boleto
	(cpf_titular, tipo, data_validade, pago)
VALUES
	('12345678955', 'A', '2018-07-30', FALSE),
	('12345678955', 'C', '2018-07-30', FALSE),
	('12345678955', 'A', '2018-06-30', TRUE),
	('12345678955', 'C', '2018-06-30', TRUE),
	('12345678922', 'A', '2018-07-30', FALSE),
	('12345678922', 'C', '2018-07-30', FALSE),
	('12345678922', 'A', '2018-05-30', FALSE),
	('12345678922', 'C', '2018-05-30', FALSE),
	('12345678123', 'A', '2018-07-30', FALSE),
	('12345678123', 'C', '2018-07-30', FALSE),
	('12345678123', 'A', '2017-07-30', TRUE);

    
