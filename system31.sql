
create schema system31;
create table system31.administrador(
	cod integer primary key,
    nome varchar(50),
	senha varchar(8),
    login varchar(15) unique,
	nascionalidade varchar(13)
);

create table system31.morador(
	cod integer primary key,
    nome varchar(50),
	senha varchar(8),
	nascionalidade varchar(13),
	data_nasc date,
	genero varchar(20),
	renda double precision 
);

create table system31.condominio(
	cod integer primary key,
	rua varchar(50),
	numero integer,
	cep varchar(8),
	bairro varchar(50),
	cidade varchar(50),
	estado varchar(15),
	nome varchar(5),
	cod_adm integer, 
    foreign key (cod_adm) references system31.administrador(cod)
);
create table system31.imovel(
	cod integer primary key,
	numero integer,
	cod_condominio integer,
    foreign key(cod_condominio) references system31.condominio(cod)
);
create table system31.contato(
	cod integer primary key,
	nome varchar(50),
	email varchar(60),
	telefone varchar(15),
	texto varchar(200)
);