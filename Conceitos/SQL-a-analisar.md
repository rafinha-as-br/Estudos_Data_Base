> **SQL**, ou ***Structured Query Language*** (Linguagem de Consulta Estruturada), é uma linguagem padrão e amplamente reconhecida para consultas e manipulação de dados em bancos de dados relacionais. Sua especificidade e eficiência a tornam uma ferramenta indispensável no mundo da tecnologia da informação, permitindo interações complexas e precisas com grandes conjuntos de dados.
> 

# **O que são comandos SQL?**

De forma geral, os comandos SQL são instruções ou consultas usadas para interagir com um banco de dados relacional.

Essas instruções SQL permitem que as pessoas ou aplicativos realizem várias operações, como recuperação, inserção, atualização e exclusão de dados em tabelas de banco de dados.

Os comandos SQL são categorizados em várias **linguagens específicas**, cada uma com seu propósito e função.

## **DDL (Data Definition Language)**

Os comandos DDL são usados para **definir a estrutura** do banco de dados:

- **CREATE:** cria objetos de banco de dados, como tabelas, índices, visões e procedimentos armazenados. 
create table nome da tabela ();
- **ALTER:** modifica a estrutura de objetos de banco de dados existentes, como adicionar ou remover colunas de tabelas.
- **DROP:** exclui objetos de banco de dados, como tabelas, índices ou visões.
- **TRUNCATE:** Remove todos os registros de uma tabela, mas mantém sua estrutura.

## **DQL (Data Query Language)**

Os comandos DQL são usados para **consultas**:

- **SELECT:** recupera dados de uma ou mais tabelas do banco de dados. É o comando principal para consultas.
- **DESC:** Exibe a tabela; 
desc nome da tabela;

## **DML (Data Manipulation Language)**

Os comandos DML são usados para **manipular os dados**:

- **INSERT:** adiciona novos registros a uma tabela.
- **UPDATE:** modifica registros existentes em uma tabela.
- **DELETE:** remove registros de uma tabela.
drop table nome da tabela;

## **DCL (Data Control Language)**

Os comandos DCL **controlam permissões** de acesso e os comandos:

- **GRANT:** Concede permissões a usuários ou funções para acessar objetos de banco de dados.
- **REVOKE:** Remove permissões previamente concedidas a usuários.

## **TCL (Transaction Control Language)**

Os comandos TCL **gerenciam transações**:

- **COMMIT:** Confirma uma transação, tornando as alterações permanentes no banco de dados.
- **ROLLBACK:** Desfaz uma transação e restaura o banco de dados ao estado anterior.
- **SAVEPOINT:** Define um ponto de salvamento em uma transação, permitindo o rollback parcial.
- **SET TRANSACTION:** Define características de transação, como isolamento e nível de isolamento.

---

## **O que é um banco de dados relacional?**

O **banco de dados relacional** é o tipo de banco que trabalha com tabelas relacionais, isto é, tabelas compostas por linhas e colunas, lembrando muito uma estrutura de tabela de Excel. Cada tabela representa uma entidade ou relação do mundo real. As linhas representam registros individuais nessa entidade, e as colunas representam os atributos ou características dos registros.

A principal característica do banco relacional é a **capacidade de estabelecer relacionamentos entre tabelas** por meio de chaves primárias e estrangeiras. Isso permite que os dados fiquem associados e que, futuramente, sejam consultados de maneira eficiente, garantindo a integridade relacional.

Este modelo relacional é bastante utilizado em sistemas de gerenciamento de bancos de dados (SGBDs) e, para trabalhar com ele, utilizamos SQL (*Structured Query Language*, linguagem de consulta estruturada), uma linguagem desenvolvida pela IBM na década de 70. Bons exemplos de SGBDs mais usados no mercado são o Oracle, MySQL e Microsoft SQL Server.

## **O que é NoSQL?**

Agora, quando falamos de NoSQL, vale ressaltar que NoSQL não é uma linguagem. **NoSQL é um termo que referencia tipos de bancos de dados não relacionais**, ou seja, que não seguem o modelo de tabelas e relacionamentos utilizado pelos bancos de dados relacionais tradicionais. Para esses bancos de dados NoSQL, temos uma variedade de modelos, incluindo o **modelo colunar, modelo de grafos, chave-valor e modelo orientado a documentos**. Cada um desses modelos possui suas próprias características e é adequado para diferentes tipos de aplicação e necessidades de armazenamento de dados.

**1. Modelo Colunar**

Também conhecido como armazenamento de colunas, é uma abordagem em que os dados são armazenados como colunas em vez de linhas. Esse modelo é ideal para situações que envolvem grande quantidade de dados e exigem alta performance, pois permite que apenas as colunas relevantes sejam buscadas e lidas, economizando recursos de processamento. Uma das empresas que utilizam esse modelo é a [Netflix](https://medium.com/@andreciobezerra/cassandra-no-netflix-um-estudo-de-caso-de-uso-c4b4ba2ce855), que utiliza o [Cassandra](https://cassandra.apache.org/_/index.html) para gravações de volume muito alto com baixa latência.

**2. Orientado a Documentos**

Nesse modelo, os dados são armazenados em documentos no formato JSON. Cada documento é identificado por uma chave única e pode conter diversas informações, como atributos e subdocumentos. Esse modelo é interessante para aplicações que exigem flexibilidade na estrutura dos dados e que lidam com grande volume de informações. Na [Expedia](https://www.mongodb.com/customers/expedia), a empresa utiliza o modelo flexível do [MongoDB](https://www.mongodb.com/) que facilita o armazenamento de qualquer combinação de cidades, datas e destinos.

**3. Chave-valor**

Os dados são armazenados em pares de chave-valor, o que significa que cada dado é identificado por uma chave única. Esse modelo é ideal para aplicações que exigem alta performance em leitura e gravação de dados, como em aplicações de cache ou armazenamento de sessões de usuários. Este modelo usado pelo [Twitter](https://redis.io/docs/manual/patterns/twitter-clone/), que utiliza o [Redis](https://redis.io/) para implementar recursos em tempo real como contadores de retweets, curtidas e seguidores.

**4. Modelo de Grafos**

Neste modelo os dados são usados para armazenar dados interconectados, como em redes sociais ou sistemas de recomendação. Com o modelo de grafos, é possível fazer buscas detalhadas nas relações entre os dados, mesmo em bancos com centenas de milhares de relacionamentos. O [Medium](https://neo4j.com/videos/how-medium-uses-neo4j/?), por exemplo, utiliza o [Neo4j](https://neo4j.com/) para criar grafos que representam as conexões entre usuários e artigos, permitindo a montagem de um sistema de recomendação.

# SQL - Código

### Manipulação de tabelas

```sql
create table Produto (
    cod_produto smallint not null,
    nome char (255) not null,
    qt_estoque smallint not null,
    valor_unit decimal(7,2) not null
);

desc Produto;

```

```sql

create table table animal(
    id_animal int generated always as identity,
    nome varchar(30) not null,
    especie varchar(30) not null,
    primary key (id_animal)
);
```

 :  Exibe a tabela 

 :  Deleta a tabela 

generated always as identity, :  Cria automaticamente um id, valor, sei lá, 

drop table nome da tabelaBKP as select * from nome da tabela; :  Cria uma cópia da tabela

### Configurar as variáveis de uma tabela:

nome da coluna tipo de variável not null ; :  Restringe uma tabela 

check (o que será restringido); :  Restringe uma tabela 

default  o que será definido por padrão ; :  Define um valor padrão para um campo

create index  IDCnome on nome da tabela(nome); :  Cria um índice não único na tabela (fora da tabela)

create unique index  IDCnome on nome da tabela(nome); :  Cria um índice não único na tabela (fora da tabela)

- Não é necessário criar índices para chaves primárias pois toda chave primária é um índice

alter table  nome da tabela INFORMAÇÃO A SER ALTERADA; :  Altera uma informação da tabela (usando: modify, rename, add, drop)

constraint  Fknome da chave estrangeira references nome da coluna; :  Define uma chave estrangeira a uma coluna da tabela