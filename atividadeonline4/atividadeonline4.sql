 CREATE LOGIN aluno
 WITH PASSWORD = '1234'

 CREATE USER aluno FOR LOGIN aluno

 GRANT SELECT TO aluno 


 -- Criamos um usuario
 -- criamos uma senha (rodar os dois ao mesmo tempo)
 -- Criei um usuario para o login aluno