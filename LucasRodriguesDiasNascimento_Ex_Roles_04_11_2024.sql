-- Exercicios em Sala de Aula 
-- Lucas Rodrigues Dias Nascimento - 12118365

-- Exercício (Ex_Roles_04_11_2024)


-- Usando o schema da loja informatica
-- apague todos usuarios menos:
/*mysql.infoschema
mysql.session
mysql.sys
root
*/
SELECT user, host FROM mysql.user;
DROP USER 'lucas'@'localhost', 'guilherme'@'localhost', 'carlos'@'localhost', 'jefferson'@'localhost', 'lorraine'@'localhost',
'JoanaASCII'@'localhost', 'KarenMouse'@'localhost','TioTeclas'@'%', 'Teclaudio','RonanAsus'@'localhost','MarcusTeras'@'localhost',
'role1'@'localhost','role2'@'localhost', 'role3'@'localhost', 'role4'@'localhost', 'role5'@'localhost';

# crie 5 roles.
# Role 1
#   apenas select no schema
USE lojainformatica;
CREATE ROLE 'role1'@'localhost';
GRANT SELECT ON lojainformatica.* TO 'role1'@'localhost';
SHOW GRANTS FOR 'role1'@'localhost';

# Role 2
#   apenas insert em clientes e create e drop
CREATE ROLE 'role2'@'localhost';
GRANT INSERT, CREATE, DROP ON lojainformatica.clientes TO 'role2'@'localhost';
SHOW GRANTS FOR 'role2'@'localhost';

# Role 3
#   apenas select no vendas
CREATE ROLE 'role3'@'localhost';
GRANT SELECT ON lojainformatica.vendas TO 'role3'@'localhost';
SHOW GRANTS FOR 'role3'@'localhost';

# Role 4
# apenas select,insert,update e delete no schema
CREATE ROLE 'role4'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON lojainformatica.* TO 'role4'@'localhost';
SHOW GRANTS FOR 'role4'@'localhost';

# Role 5
#   apenas upadate em vendas
CREATE ROLE 'role5'@'localhost';
GRANT UPDATE ON lojainformatica.vendas TO 'role5'@'localhost';
SHOW GRANTS FOR 'role5'@'localhost';

# Crie 10 usuarios
# aplique os roles aos usuario como quiser

CREATE USER 'laisa'@'localhost' IDENTIFIED BY '123456';
GRANT 'role5'@'localhost' TO 'laisa'@'localhost';
SET DEFAULT ROLE 'role5'@'localhost' TO 'laisa'@'localhost';
SHOW GRANTS FOR 'laisa'@'localhost';

CREATE USER 'carla'@'localhost' IDENTIFIED BY '89564';
GRANT 'role1'@'localhost' TO 'carla'@'localhost';
SET DEFAULT ROLE 'role1'@'localhost' TO 'carla'@'localhost';
SHOW GRANTS FOR 'carla'@'localhost';

CREATE USER 'robert'@'localhost' IDENTIFIED BY '654651';
GRANT 'role2'@'localhost' TO 'robert'@'localhost';
SET DEFAULT ROLE 'role2'@'localhost' TO 'robert'@'localhost';
SHOW GRANTS FOR 'robert'@'localhost';

CREATE USER 'fiona'@'localhost' IDENTIFIED BY '123456';
GRANT 'role4'@'localhost' TO 'fiona'@'localhost';
SET DEFAULT ROLE 'role4'@'localhost' TO 'fiona'@'localhost';
SHOW GRANTS FOR 'fiona'@'localhost';

CREATE USER 'bolacha'@'localhost' IDENTIFIED BY '888888';
GRANT 'role2'@'localhost' TO 'bolacha'@'localhost';
SET DEFAULT ROLE 'role2'@'localhost' TO 'bolacha'@'localhost';
SHOW GRANTS FOR 'bolacha'@'localhost';

CREATE USER 'bruna'@'localhost' IDENTIFIED BY '698621';
GRANT 'role3'@'localhost' TO 'bruna'@'localhost';
SET DEFAULT ROLE 'role3'@'localhost' TO 'bruna'@'localhost';
SHOW GRANTS FOR 'bruna'@'localhost';


CREATE USER 'sophia'@'localhost' IDENTIFIED BY '564512';
GRANT 'role3'@'localhost', 'role1'@'localhost' TO 'sophia'@'localhost';
SET DEFAULT ROLE 'role3'@'localhost', 'role1'@'localhost' TO 'sophia'@'localhost';
SHOW GRANTS FOR 'sophia'@'localhost';

CREATE USER 'junia'@'localhost' IDENTIFIED BY '654946';
GRANT 'role3'@'localhost' TO 'junia'@'localhost';
SET DEFAULT ROLE 'role3'@'localhost' TO 'junia'@'localhost';
SHOW GRANTS FOR 'junia'@'localhost';

CREATE USER 'bruno'@'localhost' IDENTIFIED BY '55555';
GRANT 'role1'@'localhost' TO 'bruno'@'localhost';
SET DEFAULT ROLE 'role1'@'localhost' TO 'bruno'@'localhost';
SHOW GRANTS FOR 'bruno'@'localhost';


CREATE USER 'francisca'@'localhost' IDENTIFIED BY '444444';
GRANT 'role5'@'localhost' TO 'francisca'@'localhost';
SET DEFAULT ROLE 'role5'@'localhost' TO 'francisca'@'localhost';
SHOW GRANTS FOR 'francisca'@'localhost';

# revogue os privilegios de select do role1 e insira create e drop 

REVOKE SELECT ON lojainformatica.* FROM 'role1'@'localhost';
GRANT INSERT, DROP ON lojainformatica.* TO 'role1'@'localhost';
SHOW GRANTS FOR 'role1'@'localhost';




