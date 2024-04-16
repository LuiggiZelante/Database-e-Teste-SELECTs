CREATE TABLE tb_departamento(
id_departamento INT PRIMARY KEY,
nome_departamento varchar(30) NOT NULL);

CREATE TABLE tb_funcionario(
id_empregado_pk INT PRIMARY KEY,
nome VARCHAR(40) NOT NULL,
cpf INT NOT NULL,
sexo VARCHAR(1) CHECK(sexo IN('F','M')),
salario FLOAT NOT NULL,
cargo VARCHAR(30) NOT NULL,
departamento INT,
CONSTRAINT departamento_fk FOREIGN KEY(departamento)
REFERENCES tb_departamento(id_departamento));


INSERT INTO tb_departamento VALUES(1,'Informatica');
INSERT INTO tb_departamento VALUES(2,'Oficina');
INSERT INTO tb_departamento VALUES(3,'Estoque');
INSERT INTO tb_departamento VALUES(4,'Contabilidade');
INSERT INTO tb_departamento VALUES(5,'Financeiro');
INSERT INTO tb_departamento VALUES(6,'ADM');


INSERT INTO tb_funcionario VALUES(1,'João',1,'M',200.45,'Programador',1);
INSERT INTO tb_funcionario VALUES(2,'Bruno',2,'M',257.56,'Analista',5);
INSERT INTO tb_funcionario VALUES(3,'thais',3,'F',299.89,'Mecanico',2);
INSERT INTO tb_funcionario VALUES(4,'Paulo',4,'M',359.23,'Pintor',2);
INSERT INTO tb_funcionario VALUES(5,'Janaina',5,'F',158.15,'Programador',1);
INSERT INTO tb_funcionario VALUES(6,'Ricardo',6,'M',60.8,'Motoboy',2);
INSERT INTO tb_funcionario VALUES(7,'Bruna',7,'F',200.98,'Gerente',3);
INSERT INTO tb_funcionario VALUES(8,'carlos',8,'M',101.68,'Funileiro',2);
INSERT INTO tb_funcionario VALUES(9,'Andriano',9,'M',851.45,'Programador',1);
INSERT INTO tb_funcionario VALUES(10,'Ana Paula',10,'F',601.8,'Motoboy',4);




SELECT AVG(salario) Media_Salario_Motoboy
FROM tb_funcionario
WHERE cargo = 'Motoboy';

SELECT MIN(salario)Menor_Salario
FROM tb_funcionario
WHERE sexo = 'M';

UPDATE tb_funcionario SET nome = 'Carlos' WHERE nome = 'carlos';

ALTER TABLE tb_funcionario ADD(faturamento FLOAT DEFAULT 0);

DELETE FROM tb_funcionario
WHERE nome = 'Carlos';