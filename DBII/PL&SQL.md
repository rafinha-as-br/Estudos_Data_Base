Quando falamos em performance e segurança no desenvolvimento de aplicações, devemos compreender que estes são pontos bastantes críticos e que merecem atenção. 
Conhecer técnicas e métodos para otimizar a performance das aplicações é um requisito muito importante para desenvolvedores e, diante disso, é necessário conhecer como utilizar apropriadamente objetos PL/SQL, packages e stored procedures como alternativas para substituir instruções SQL nas chamadas das aplicações. Aplicações que acessam banco de dados comumente necessitam executar rotinas complexas de manipulação dos dados a partir da linguagem/ferramenta utilizada. Para isso, utilizamos várias instruções SQL em sequência para obter o resultado esperado.
Dependendo da rotina a ser executada, podem ser necessárias várias instruções de consultas, inserções, remoções e/ou atualizações na base de dados, o que acarreta um maior consumo de recursos pela aplicação. No caso de aplicações web, isso se torna ainda mais visível, devido a maior quantidade de dados que precisam trafegar pela rede e de requisições ao servidor. Assim, é possível pensar alternativas para  otimizar o desempenho de sistemas que acessam bancos de dados, principalmente aqueles que executam longas transações que envolvem múltiplas consultas ou atualizações de dados.
Uma maneira adequada de reduzir o consumo de recursos diretamente pela aplicação é transferir parte do processamento para o banco de dados. Assim, considerando que as máquinas servidoras geralmente têm configurações de hardware mais robustas, enquanto nada se pode garantir com relação às máquinas clientes, a utilização de rotinas, os blocos PL/SQL e as stored procedures, no servidor de banco de dados pode ser uma estratégia a se considerar.
A linguagem PL/SQL permite combinar o poder de manipulação de dados da linguagem SQL com o poder de processamento das linguagens de programação procedimentais.
Assim, é possível se beneficiar das seguintes características:
Declaração de variáveis e constantes;
Tipos de dados escalares e estruturados;
Controle do fluxo de execução;
Funções;
Gestão de cursores;
Processamento de exceções;
Código armazenado na base de dados.


2. Blocos PL/SQL Anônimos
As seções a seguir apresentam conceitos, exemplos e também exercícios para praticar o uso de blocos PL/SQL anônimos.
2.1 Conceito e Sintaxe
A instrução de bloco anônimo PL/SQL é uma instrução executável que pode conter comandos de controle PL/SQL e comandos SQL. Ele pode ser usado para implementar a lógica processual em uma linguagem de script. Um bloco anônimo não possui nome e não é armazenado no banco de dados.
A sintaxe para criar um bloco anônimo está descrita abaixo:

DECLARE
  Declaration section
BEGIN
   Execution section
EXCEPTION
  Exception section
END;
Para fazer comentários de linhas no código, basta usar Os comentários de linhas de código são o carácter – e para fazer comentários de blocos, utilize /* */.
