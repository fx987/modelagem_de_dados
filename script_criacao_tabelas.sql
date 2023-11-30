CREATE DATABASE IF NOT EXISTS resiliadata;
USE resiliadata; 

CREATE TABLE IF NOT EXISTS empresas_parceiras(
	id_empresas INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cnpj VARCHAR(14) NOT NULL,
	telefone VARCHAR(15) NOT NULL,
	email VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS tecnologias(
	id_tecnologia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    area VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS tecnologias_utilizadas(
	id_empresa INT NOT NULL,
	id_tecnologia INT NOT NULL,
    FOREIGN KEY(id_empresa) REFERENCES empresas_parceiras(id_empresas),
    FOREIGN KEY(id_tecnologia) REFERENCES tecnologias(id_tecnologia)
);

CREATE TABLE IF NOT EXISTS colaboradores(
	id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    id_empresa INT NOT NULL,
    FOREIGN KEY(id_empresa) REFERENCES empresas_parceiras(id_empresas)
);
