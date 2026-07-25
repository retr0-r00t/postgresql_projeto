-- ===============
-- Queries Basicas
-- ===============

-- Listagem de todos chamados ABERTOS ou EM ANALISE
SELECT ch_id, titulo, status_ch, prioridade, data_abertira
FROM chamados_suporte
WHERE status_ch IN ('ABERTO', 'EM ANALISE')
ORDER BY data_abertira ASC;

-- Filtragem de chamados por nivel de prioridade CRITICA ou ALTA
SELECT ch_id, titulo, status_ch, prioridade
FROM chamados_suporte
WHERE prioridade IN ('CRITICA', 'ALTA') AND status_ch != 'RESOLVIDO';

-- Busca por chamados com palavras chave usando ILIKE
SELECT ch_id, titulo, status_ch, data_abertura
FROM chamados_suporte
WHERE descricao ILIKE '%estoque' OR descricao ILIKE '%SQL%';

-- Consulta de usuários por Departamento especifico
SELECT nome, email, cargo
FROM usuarios
WHERE dep_id = 1
ORDER BY nome ASC;