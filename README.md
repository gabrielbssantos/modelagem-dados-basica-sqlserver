# Modelagem Básica de um Banco de Dados no Microsoft SQL Server

O intuito destes repositório é demonstrar como seria o processo simples de modelagem de um banco de dados utilizando o SQL Server.


## O cenário
Para desenvolver os conceitos de modelagem vamos utilizar um exemplo fictício de uma empresa de venda sucos. Onde durante o levantamento as entrevistas com o cliente identificamos os seguintes requisitos:

- Banco de dados para armazenar as vendas da empresa.
- Cada registro de venda possui vendedor, cliente e itens vendidos.
- Para cada vendedor precisa constar informações de cadastro e principalmente se ele está de férias e qual o seu percentual de comissão.
- Para cada cliente precisa constar informações básicas de cadastro, como cpf, endereço e também se ele já fez a primeira compra.
- Registro de cada venda e cada item vendido.
- Uma base de dados com cada produto comercializado pela empresa.


## Modelagem do Banco de Dados

### Modelo conceitual
Com o propósito de tornar mais tangível o foi captado durante as entrevistas com o cliente, o primeiro passo é desenvolver um modelo conceitual do banco de dados, onde já conseguimos identificar as entidades que constituiem o problema e a regra de negócio que deve ser aplicada ao banco de dados.

![Modelo Conceitual](https://github.com/gabrielbssantos/modelagem-dados-basica-sqlserver/blob/main/images/conceptual-model.drawio.png?raw=true)

### Modelo lógico
Ok, definido as entidades e relação entre elas dentro da regra de negócio, o passo seguinte é desenhar um modelo lógico do banco de dados. Aqui vamos incluir mais detalhe para a implementação do projeto, como nome das tabelas seus campos e tipo de dados. Também pode conter restrições como por exemplo o campo não permitir valores nulos. A ideia do modelo lógico é realmente servir de mapa para a etapa seguinte (passar esse desenho para comandos SQL e executar criando o banco de dados fisicamnte).

![Modelo Conceitual](https://github.com/gabrielbssantos/modelagem-dados-basica-sqlserver/blob/main/images/logical-model.drawio.png?raw=true)

### Modelo físico
