create database if not exists RafaelTavares;
use RafaelTavares;

create table Correntista(
    CPF varchar(11) not null,
    Nome varchar(45) not null,
    Logradouro varchar(45),
    Numero varchar(45),
    Bairro varchar(45),
    UF varchar(45),
    CEP varchar(45),
    DataNascimento date,
    RendaMensal decimal(10,2),
    constraint PK_Correntista primary key(CPF)
);

create table Agencia(
    Codigo int not null,
    Nome varchar(45) ,
    Logradouro varchar(45),
    Numero varchar(45),
    Bairro varchar(45),
    UF varchar(45),
    CEP varchar(45),
    constraint PK_Agencia primary key(Codigo)
);

create table ContaCorrente(
    Numero int not null,
    Digito int not null,
    Agencia_Codigo int not null,
    Saldo decimal(10,2),
    constraint PK_Numero primary key(Numero)
);

create table Dependente(
    ID_Dependente int not null,
    Nome varchar(45) not null,
    Correntista_CPF varchar(11) not null,
    constraint PK_ID_Dependente primary key(ID_Dependente)
);

create table TelefoneAgencia(
    Telefone varchar(45) not null,
    Agencia_Codigo int not null,
    constraint PK_Telefone_Agencia primary key(Telefone, Agencia_Codigo)
);

create table TelefoneCorrentista(
    Telefone varchar(45) not null,
    Correntista_CPF varchar(11) not null,
    constraint PK_Telefone_Correntista primary key(Telefone, Correntista_CPF)
);

create table ContaCorrente_Has_Correntista(
    ContaCorrente_Numero int not null,
    Correntista_CPF varchar(11) not null,
    constraint PK_ContaCorrente_Has_Correntista primary key(ContaCorrente_Numero, Correntista_CPF)
);