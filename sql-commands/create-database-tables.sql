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