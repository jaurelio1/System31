USE system31;

INSERT INTO condominio 
	(codigo, nome, cidade, bairro, rua, numero, cep, qtd_imoveis)
VALUES	
	(DEFAULT, 'Vale Do Sol', 'Campina Grande', 'Centro', 'Maria das Graças', 100, 58418215, 5),
    (DEFAULT, 'Lua Mar', 'Campina Grande', 'São José', 'Av. professor Almeida Barreto', 150, 58400328, 7),
    (DEFAULT, 'Riacho', 'Campina Grande', 'Dinamérica', 'João Fonseca', 2510, 58418000, 10),
    (DEFAULT, 'Beija Flor', 'Belo Jardim', 'Centro', 'Siqueira Campos', 1250, 55155250, 15),
    (DEFAULT, 'Rio Dourado', 'João Pessoa', 'Cabo Branco', 'Lirios dos Campos', 1234, 50000123, 20);
    

INSERT INTO administrador
	(cpf, rg, nome, sexo, estado_civil, email, telefone, senha, data_nascimento, rua, num_home, bairro, cep, cidade, cod_condom)
VALUES	
	(09915396400, 387945912, 'João', 'M', 'casado', 'joao@hotmail.com', '81989541212', '123456', '1995-09-12', 'Nilton Senhorinho', 50, 'Centro', 77777888, 'Campina Grande', 1),
    (09915391234, 387945123, 'Maria', 'F', 'casado', 'maria@hotmail.com', '81989540000', '654321', '1995-12-30', 'Arruda Vasconscelos', 100, 'Dinamérica',  99999888,'Campina Grande', 2),
    (09915312345, 387941234, 'José', 'M', 'solteiro', 'jose@hotmail.com', '81989541111', '000000', '1955-01-22', 'Governador Valadares', 234, 'Bodocongó', 66666888, 'Campina Grande', 3),
    (09915123456, 387912345, 'Francisca', 'F', 'casado', 'francisca@hotmail.com', '81989542222', '102030', '1980-10-13', 'Maria Lidia', 510, 'Malvinas', 55555888,'Belo Jardim', 4),
    (09911234567, 387123456, 'Antonio', 'M', 'solteiro', 'antonio@hotmail.com', '81989543333', '5555555', '1990-05-20', 'Torres Maciel', 201, 'Centro', 44444888, 'João Pessoa', 5);
    
INSERT INTO imovel
	(numero_imovel, cod_condom, taxa_condominio, valor_aluguel, vagas_garagem, qtd_quartos, qtd_banheiros, qtd_suites, varanda, manutencao, aluguel_ou_venda, area_metros_quadrado)
VALUES
	(1, 1, 100.00, 500.00, 1, 2, 1, 0, FALSE, FALSE, 'A', 40),
    (2, 1, 100.00, 500.00, 1, 2, 1, 0, FALSE, FALSE, 'A', 40),
    (3, 1, 100.00, 500.00, 1, 2, 1, 0, FALSE, FALSE, 'A', 40),
    (4, 1, 100.00, 500.00, 1, 2, 1, 0, FALSE, FALSE, 'A', 40),
    (5, 1, 100.00, 500.00, 1, 2, 1, 0, FALSE, FALSE, 'A', 40),
    (10, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, FALSE, 'A', 50),
    (20, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, FALSE, 'A', 50),
    (30, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, FALSE, 'A', 50),
    (40, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, FALSE, 'A', 50),
    (50, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, FALSE, 'A', 50),
    (60, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, FALSE, 'A', 50),
    (70, 2, 200.00, 700.00, 2, 2, 1, 1, FALSE, FALSE, 'A', 50),
    (101, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, FALSE, 'V', 35),
    (102, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, FALSE, 'V', 35),
    (103, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, FALSE, 'V', 35),
    (104, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, FALSE, 'V', 35),
    (105, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, FALSE, 'V', 35),
    (106, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, FALSE, 'V', 35),
    (107, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, FALSE, 'V', 35),
    (108, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, FALSE, 'V', 35),
    (109, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, FALSE, 'V', 35),
    (110, 3, 150.00, 400.00, 0, 1, 1, 0, FALSE, FALSE, 'V', 35),
    (201, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (202, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (203, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (204, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (205, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (206, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (207, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (208, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (209, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (210, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (211, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (212, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (213, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (214, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (215, 4, 300.00, 1000.00, 4, 5, 2, 3, TRUE, FALSE, 'A', 95),
    (1001, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1002, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1003, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1004, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1005, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1006, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1007, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1008, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1009, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1010, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1011, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1012, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1013, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1014, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1015, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1016, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1017, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1018, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1019, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45),
    (1020, 5, 125.00, 480.00, 1, 1, 1, 1, TRUE, FALSE, 'A', 45);
    
INSERT INTO morador_titular
	(cpf, nome, sexo, num_imovel, cod_condom, renda, inadimplencia, sindico, email, telefone)
VALUES
	(12345678955, 'Bruno', 'M', 0, 1, 1000.00, FALSE, FALSE, 'bruno@gmail.com', '83977551122'),
    (12345678911, 'Carlos', 'M', 1, 1, 1000.00, FALSE, FALSE, 'carlos@gmail.com', '83977551122'),
    (12345678944, 'Samantha', 'F', 10, 2, 5000.00, FALSE, FALSE, 'samantha@gmail.com', '83977551122'),
    (12345678933, 'Vinicius', 'M', 20, 2, 5000.00, FALSE, FALSE, 'vinicius@gmail.com', '83977551122'),
    (12345678922, 'Rafaela', 'F', 100, 3, 4000.00, FALSE, FALSE, 'rafaela@gmail.com', '83977551122'),
    (12345678966, 'Vitor', 'M', 101, 3, 4000.00, FALSE, FALSE, 'vitor@gmail.com', '83977551122'),
    (12345678988, 'Vitoria', 'F', 200, 4, 10000.00, FALSE, FALSE, 'vitoria@gmail.com', '83977551122'),
    (12345678977, 'Raul', 'M', 201, 4, 10000.00, FALSE, FALSE, 'raul@gmail.com', '83977551122'),
    (12345678999, 'Marcela', 'F', 1000, 5, 1500.00, FALSE, FALSE, 'marcela@gmail.com', '83977551122'),
    (12345678123, 'Carla', 'F', 1005, 5, 1500.00, FALSE, FALSE, 'carla@gmail.com', '83977551122');
    
INSERT INTO morador_dependendente
	(cpf, nome, sexo, email, telefone, sindico, cpf_titular)
VALUES
	(00011122233, 'Fábio', 'M', 'fabio@academico.ifpb.edu.br', '835544332211', FALSE, 1234567855),
    (00011122244, 'Sara', 'F', 'sara@academico.ifpb.edu.br', '835544332299', FALSE, 1234567811),
    (00011122255, 'Vilma', 'F', 'vilma@academico.ifpb.edu.br', '835544332288', FALSE, 1234567123);
    
