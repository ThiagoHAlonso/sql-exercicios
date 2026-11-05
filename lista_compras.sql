-- Criando Banco de Dados
create database lista_compras
charset utf8mb4
collate utf8mb4_unicode_ci;

-- Usando a tabela
use lista_compras

-- Criando Tabela
create table itens(
nome varchar (30),
preco float (6, 2)
);

-- Inserindo Valores
insert into itens values
("laranja", 7.50),
("Sabão em Pó", 18.70),
("Creme de Leite", 6.49);

-- Selecionando todos os itens 
select * from itens;    

