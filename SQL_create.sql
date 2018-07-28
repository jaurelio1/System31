CREATE DATABASE IF NOT EXISTS system31 DEFAULT CHARACTER SET = utf8;


CREATE TABLE IF NOT EXISTS system31.Condominio  (
    codigo INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
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
    estado_civil VARCHAR(50),
    email VARCHAR(50),
    telefone VARCHAR(50),
    senha VARCHAR(50),
    data_nascimento DATE,
    rua VARCHAR(50),
    num_home INTEGER,
    bairro VARCHAR(50),
    cep INTEGER,
    cidade VARCHAR(50),
    cod_condom INTEGER,
    FOREIGN KEY (cod_condom) REFERENCES Condominio (codigo)
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
    manutencao BOOLEAN,
    aluguel_ou_venda CHARACTER,
    area_metros_quadrado INTEGER,
    FOREIGN KEY (cod_condom) REFERENCES Condominio (codigo),
    PRIMARY KEY(numero_imovel, cod_condom)
);

CREATE TABLE IF NOT EXISTS system31.Morador_titular (
    cpf VARCHAR(50) PRIMARY KEY,
    nome VARCHAR(50),
    sexo CHARACTER,
    num_imovel INTEGER,
    cod_condom INTEGER,
    renda DECIMAL(10,2),
    inadimplencia BOOLEAN DEFAULT FALSE,
    sindico BOOLEAN DEFAULT FALSE,
	email VARCHAR(50),
    telefone VARCHAR(50),
    FOREIGN KEY (cod_condom) REFERENCES Condominio (codigo),
    FOREIGN KEY (num_imovel) REFERENCES Imovel (numero)
);

CREATE TABLE IF NOT EXISTS system31.Morador_dependendente (
    cpf VARCHAR(50) PRIMARY KEY,
    nome VARCHAR(50),
    sexo CHARACTER,
	email VARCHAR(50),
    telefone VARCHAR(50),
    sindico BOOLEAN DEFAULT FALSE,
    cpf_titular VARCHAR(50),
    foreign key (cpf_titular) references Morador_titular(cpf)
);
