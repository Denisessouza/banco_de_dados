SELECT * FROM countries;
SELECT * FROM Departments;

-- select simples:
SELECT * FROM locations;
SELECT * FROM departments;
SELECT * FROM jobs;

-- selecionando colunas:
SELECT DEPARTMENT_ID, DEPARTMENT_NAME FROM departments;

SELECT * FROM employees;
SELECT FIRST_NAME, EMAIL, JOB_ID FROM employees;

-- Apelidando campos

SELECT FIRST_NAME AS "Nome", EMAIL AS "E-mail", JOB_ID AS "Cargo" FROM employees;

SELECT * FROM DEPARTMENTS;
SELECT d.DEPARTMENT_ID, d.DEPARTMENT_NAME FROM DEPARTMENTS d;

-- CRIAR UM NOVO BANCO DE DADOS

CREATE DATABASE CURSOSENAI;
USE CURSOSENAI;

-- CRIAÇÃO DE TABELAS

CREATE TABLE cadastro (
Nome VARCHAR (30),
Sobrenome VARCHAR (30),
Salario MONEY,
Endereco VARCHAR (30),
dt_cadastro DATE
);

SELECT * FROM cadastro;
INSERT INTO cadastro VALUES ('Marcelo', 'Diniz', 1000, 'Rua Piracema,100',SYSDATETIME());
SELECT * FROM cadastro;
INSERT INTO cadastro VALUES ('Ana', 'Viana', 2000, 'Rua Feliz,100',SYSDATETIME());
insert into cadastro values ('Miguel','Carmin',4000,'Piaui 100',sysdatetime());
insert into cadastro values ('Camila','Pacheco',8000,'Sao Jorge 84',sysdatetime());
insert into cadastro values ('Marina','Augusto',1400,'Nova Tatuape 100',sysdatetime());
insert into cadastro values ('Roberto','Eduardo',800,'Jurubatuba 505',sysdatetime());
insert into cadastro values ('Eduardo','Gomes',1000,'Estrela 14',sysdatetime());
insert into cadastro values ('Mario','Temer',3500,'Moreira 10',sysdatetime());
insert into cadastro values ('Marcelo','Juracy',7350,'Santa Elvira',sysdatetime());

-- Cadastrei duas vezes Ana Viana :/

SELECT * FROM cadastro;
SELECT Sobrenome from cadastro;

-- Seleção por nome

SELECT NOME, SOBRENOME FROM cadastro WHERE nome IN ('Marina', 'Eduardo');

SELECT * FROM cadastro WHERE nome = 'Marina' OR nome= 'Eduardo';

-- Select com operações - Retornar todos os registros da tabela cadastro com o cálculo de quanto os funcionários ganham em um ano de trabalho, 
-- Criar o apelido ANUAL.

SELECT *, salario * 12 AS "Anual" FROM cadastro;

-- Selecionar as colunas nome e sobrenome da tabela cadastro e simular um aumento de 10% - apelidar coluna Aumento.
SELECT nome, sobrenome, (salario * 1.1) AS "Aumento" FROM cadastro;

-- Expressão matemática para saber apenas o valor do AUMENTO 
SELECT nome, sobrenome, ((salario * 10)/100) AS "Aumento" FROM cadastro;

-- Selecionar todos os funcionários que ganham entre 4000 e 5000 
	
SELECT * FROM cadastro WHERE salario >= 4000 and salario <= 5000;

SELECT * FROM cadastro WHERE salario BETWEEN  4000 and 8000;

-- Alterar o salário de um funcionário 
UPDATE cadastro SET salario =2000 WHERE nome= 'Marcelo';

-- EXEMPLO DE UPDATE/ SET USANDO AS CHAVES ESTRANGEIRAS - BANCO HR

SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID = 30;
SELECT * FROM DEPARTMENTS;

UPDATE employees SET salary= 10000 WHERE department_id =60;

UPDATE employees SET salary = salary * 1.1 WHERE department_id = 30;

-- BANCO CURSOSENAI

USE CURSOSENAI;

SELECT * FROM cadastro;

-- DELETE deleta os registros da tabela
DELETE FROM cadastro WHERE nome= 'Ana';

INSERT INTO cadastro VALUES ('Ana', 'Amada',1200, 'Rua Feliz, 100', SYSDATETIME());

-- DROP elimina a tabela ou ainda o Banco de Dados

DROP TABLE cadastro;



