USE resiliadata; 

-- CONSULTAS AO BANCO DE DADOS 

-- QUAIS TECNOLOGIAS SAO MAIS UTILIZADAS
SELECT  tecnologias.nome, COUNT(tecnologias_utilizadas.id_empresa) AS qtd_utilizacoes
FROM empresas_parceiras
INNER JOIN tecnologias_utilizadas ON tecnologias_utilizadas.id_empresa = empresas_parceiras.id_empresas
INNER JOIN tecnologias ON tecnologias.id_tecnologia = tecnologias_utilizadas.id_tecnologia
GROUP BY tecnologias.id_tecnologia, tecnologias.nome
ORDER BY qtd_utilizacoes DESC;

-- QUAIS SÃO SO COLABORADORES DA EMPRESAS
SELECT  colaboradores.nome,colaboradores.email,colaboradores.cargo FROM colaboradores INNER JOIN empresas_parceiras ON colaboradores.id_empresa=empresas_parceiras.id_empresas;
