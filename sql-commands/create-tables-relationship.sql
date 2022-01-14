/*
 * OBJETIVO DO SCRIPT:
 * 
 * Criação dos relacionamentos entre as tabelas criadas no outro script.
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

USE sucos_vendas;


-- RELACIONAMENTOS

-- Vendedores/Notas

ALTER TABLE notas
	
	ADD CONSTRAINT fk_vendedores_notas
		FOREIGN KEY (matricula)
            REFERENCES vendedores(matricula);


-- Clientes/Notas

ALTER TABLE notas

	ADD CONSTRAINT fk_clientes_notas
		FOREIGN KEY (cpf)
            REFERENCES clientes(cpf);


-- Notas/Itens Vendidos

ALTER TABLE itens_vendidos

	ADD CONSTRAINT fk_notas_itens_vendidos
		FOREIGN KEY (numero_nota)
            REFERENCES notas(numero);


-- Produtos/Itens Vendidos

ALTER TABLE itens_vendidos
	
	ADD CONSTRAINT fk_produtos_itens_vendidos
		FOREIGN KEY (codigo_produto)
            REFERENCES produtos(codigo_produto);