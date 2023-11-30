USE resiliadata; 

INSERT INTO empresas_parceiras (nome, cnpj, telefone, email) VALUES ('Empresa A', '12345678901234', '123456789', 'empresaA@email.com');
INSERT INTO empresas_parceiras (nome, cnpj, telefone, email) VALUES ('Empresa B', '56789012345678', '987654321', 'empresaB@email.com');
-- Adicione mais empresas_parceiras conforme necessário

INSERT INTO tecnologias (nome, area) VALUES ('Tecnologia A', 'Área A');
INSERT INTO tecnologias (nome, area) VALUES ('Tecnologia B', 'Área B');
-- Adicione mais tecnologias conforme necessário

INSERT INTO colaboradores (id, nome, cargo, email, id_empresa) VALUES (1, 'Colaborador 1', 'Cargo A', 'colaborador1@email.com', 1);  -- Associa Colaborador 1 à Empresa A
INSERT INTO colaboradores (id, nome, cargo, email, id_empresa) VALUES (2, 'Colaborador 2', 'Cargo B', 'colaborador2@email.com', 2);  -- Associa Colaborador 2 à Empresa B
-- Adicione mais colaboradores conforme necessário

INSERT INTO tecnologias_utilizadas (id_empresa, id_tecnologia) VALUES (1, 1);  -- Relaciona a Empresa A com Tecnologia A
INSERT INTO tecnologias_utilizadas (id_empresa, id_tecnologia) VALUES (2, 2);  -- Relaciona a Empresa B com Tecnologia B
-- Continue adicionando relações entre empresas e tecnologias conforme necessário
