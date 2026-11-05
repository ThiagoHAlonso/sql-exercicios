create database atividade;

use atividade;

create table curso(
	codigoCurso int not null auto_increment,
    nomeCurso varchar(50) not null default "Não informado",
    duracaoCurso varchar(30) not null,
    dataPublicacao year not null,
    primary key (codigoCurso)
);

create table aluno(

-- Indicando os atributos normais
matricula int not null auto_increment,
nome varchar(50) not null,
anoNasc year not null,
telefone varchar (11) not null,
bairro varchar (50) not null default "Não informado",
cep varchar(8) not null,

codigoCurso int,



-- Indicando a chave primaria 
primary key (matricula),

-- Indicando o relacionamento com a chave estrangeira
foreign key (codigoCurso) references curso (codigoCurso)
);


-- Criando o curso 
insert into curso values
(default, "ADS", "5 Semestres", 2023);

insert into aluno values
(default, "Anderson", 2003, "1195309316", "Sao judas" , "08075000", 1);

select * from aluno;

-- Thiago Henrique Alonso, 
-- Lucas Felipe Silva de Oliveira, 
-- Anderson da Silva Melo  