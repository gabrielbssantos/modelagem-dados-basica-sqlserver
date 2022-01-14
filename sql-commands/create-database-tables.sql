/*
 * OBJETIVO DO SCRIPT:
 * 
 * Modelagem de um banco de dados para uma empresa fictícia de banco de venda de sucos
 * 
 * 
 * 
 * ESTRUTURA:
 * 
 *  > Banco de dados:
 * 		- sucos_vendas
 * 			
 * 			> Tabelas
 * 				- vendedores
 * 				- clientes
 * 				- notas
 * 				- itens_vendidos
 * 				- produtos
 * 			
 * 			> Relacionamentos:
 * 				> 1:n
 * 					- vendedores - notas
 * 					- clientes - notas
 * 					- notas - itens_vendidos
 * 					- produtos - itens_vendidos
 * 
 * 				> n:n
 * 					- vendedores - clientes (notas)
 * 					- notas - produtos (itens_vendidos)
 */

-- ========================================================================================|


-- MODELO FÍSICO

-- Banco de dados: sucos_vendas

CREATE DATABASE sucos_vendas;



-- TABELAS

USE sucos_vendas;


-- Vendedores

CREATE TABLE vendedores (

	matricula VARCHAR(5) NOT NULL,
	nome VARCHAR(100) NULL,
	bairro VARCHAR(50) NULL,
	comissao FLOAT NULL,
	data_admissao DATE NULL,
	ferias BIT NULL,
	
	CONSTRAINT pk_vendedores
		PRIMARY KEY (matricula)
		
);


-- Clientes

CREATE TABLE clientes (

	cpf VARCHAR(11) NOT NULL,
	nome VARCHAR(100) NULL,
	endereco VARCHAR(150) NULL,
	bairro VARCHAR(50) NULL,
	cidade VARCHAR(50) NULL,
	estado VARCHAR(50) NULL,
	cep VARCHAR(8) NULL,
	data_nascimento DATE NULL,
	idade INT NULL,
	sexo VARCHAR(1) NULL,
	limite_credito FLOAT null,
	volume_compra FLOAT NULL,
	primeira_compra BIT NULL,
	
	CONSTRAINT pk_clientes 
		PRIMARY KEY (cpf)
	
);


-- Notas

CREATE TABLE notas (
	
	numero VARCHAR(5) NOT NULL,
	data_nota DATE NULL,
	cpf VARCHAR(11) NOT NULL,
	matricula VARCHAR(5) NULL,
	imposto FLOAT NULL,
	
 	CONSTRAINT pk_notas 
		PRIMARY KEY (numero)
	
);


-- Itens Vendidos

CREATE TABLE itens_vendidos (
	
	codigo_produto VARCHAR(10) NOT NULL,
	numero_nota VARCHAR(5) NOT NULL,
	quantidade INT NULL,
	preco FLOAT NULL,
	
	CONSTRAINT pk_itens_vendidos
		PRIMARY KEY (numero_nota, codigo_produto)
		
);


-- Produtos

CREATE TABLE produtos (
	
	codigo_produto VARCHAR(10) NOT NULL,
	descritor VARCHAR(100) NULL,
	sabor VARCHAR(50) NULL,
	tamanho VARCHAR(50) NULL,
	embalagem VARCHAR(50) NULL,
	preco_lista FLOAT NULL,
	
	CONSTRAINT pk_produtos
		PRIMARY KEY (codigo_produto)
		
);