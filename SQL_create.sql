CREATE DATABASE IF NOT EXISTS system31 DEFAULT CHARACTER SET = utf8;

USE system31;

CREATE TABLE IF NOT EXISTS system31.Condominio  (
    codigo INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    uf VARCHAR(2),
    cidade VARCHAR(50),
    bairro VARCHAR(50),
    rua VARCHAR(50),
    numero INTEGER,
    cep INTEGER,
    qtd_imoveis INTEGER
);

CREATE TABLE IF NOT EXISTS system31.Administrador (
    cpf VARCHAR(50) PRIMARY KEY,
    rg VARCHAR(50),
    nome VARCHAR(50),
    sexo CHARACTER,
    email VARCHAR(50),
    telefone VARCHAR(50),
    senha VARCHAR(50),
    data_nascimento DATE,
    rua VARCHAR(50),
    num_home INTEGER,
    bairro VARCHAR(50),
    uf VARCHAR(2),
    cep INTEGER,
    cidade VARCHAR(50),
    cod_condom INTEGER,
    FOREIGN KEY (cod_condom) REFERENCES system31.Condominio (codigo)
);

CREATE TABLE IF NOT EXISTS system31.Imovel (
    numero_imovel INTEGER,
    cod_condom INTEGER,
    taxa_condominio DECIMAL(10,2),
    valor_aluguel DECIMAL(10,2),
    vagas_garagem INTEGER,
    qtd_quartos INTEGER DEFAULT 1,
    qtd_banheiros INTEGER DEFAULT 1,
    qtd_suites INTEGER,
    varanda BOOLEAN,
    area_metros_quadrado INTEGER,
    FOREIGN KEY (cod_condom) REFERENCES system31.Condominio (codigo),
    PRIMARY KEY(numero_imovel, cod_condom)
);

CREATE TABLE IF NOT EXISTS system31.Morador_titular (
    cpf VARCHAR(50) PRIMARY KEY,
    senha VARCHAR(50) DEFAULT '123456',
    nome VARCHAR(50),
    sexo CHARACTER,
    num_imovel INTEGER,
    cod_condom INTEGER,
    renda DECIMAL(10,2),
    sindico BOOLEAN DEFAULT FALSE,
	email VARCHAR(50),
    telefone VARCHAR(50),
    FOREIGN KEY (cod_condom) REFERENCES system31.Condominio (codigo),
    FOREIGN KEY (num_imovel) REFERENCES system31.Imovel (numero_imovel)
);

CREATE TABLE IF NOT EXISTS system31.Morador_dependendente (
    cpf VARCHAR(50) PRIMARY KEY,
    nome VARCHAR(50),
    sexo CHARACTER,
	email VARCHAR(50),
    telefone VARCHAR(50),
    cpf_titular VARCHAR(50),
    FOREIGN KEY (cpf_titular) REFERENCES system31.Morador_titular(cpf)
);

CREATE TABLE IF NOT EXISTS system31.Mor_Condom_Imo (
    cpf_morador VARCHAR(50),
    cod_condom INTEGER,
    num_imovel INTEGER,
    FOREIGN KEY (cpf_morador) REFERENCES system31.Morador_titular(cpf),
    FOREIGN KEY (cod_condom) REFERENCES system31.Condominio (codigo),
    FOREIGN KEY (num_imovel) REFERENCES system31.Imovel (numero_imovel)
);

CREATE TABLE IF NOT EXISTS system31.Boleto (
    cpf_titular VARCHAR(50),
    tipo CHARACTER,
    data_validade DATE,
    pago BOOLEAN,
    FOREIGN KEY (cpf_titular) REFERENCES system31.Morador_titular(cpf)
);
