CREATE DATABASE db_clinica_daherzittos;
USE db_clinica_daherzittos;
CREATE TABLE tb_medico(
crm INTEGER NOT NULL PRIMARY KEY,
nomeM VARCHAR(100) NOT NULL
);
CREATE TABLE tb_paciente(
ID INTEGER NOT NULL PRIMARY KEY,
nomePAC VARCHAR(100) NOT NULL
);
CREATE TABLE tb_consulta(
CRM INTEGER NOT NULL,
ID INTEGER NOT NULL,
data_consulta DATE,
hora_consulta TIME,
PRIMARY KEY(CRM,ID),
FOREIGN KEY(CRM) references tb_medico(crm),
FOREIGN KEY(ID) references tb_paciente(ID)
);
INSERT tb_medico VALUES (1010,'José Maria');
INSERT tb_medico VALUES (1011,'Diego');
INSERT tb_medico VALUES (1012,'Diogo');
INSERT tb_medico VALUES (1013,'Paulo Cesar');
INSERT tb_paciente VALUES (1,'Ana');
INSERT tb_paciente VALUES (2,'Josyane');
INSERT tb_paciente VALUES (3,'Maria');
INSERT tb_paciente VALUES (4,'João');
INSERT tb_paciente VALUES (5,'Pedro');
SELECT *
FROM tb_paciente
SELECT *
FROM tb_medico
SELECT nomeM
FROM tb_medico
WHERE crm=1010
