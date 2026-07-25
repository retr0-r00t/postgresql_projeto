-- =================================
-- Extração de métricas para análise
-- =================================

-- Relatório geral de chamados com nomes, utilizando INNER JOIN
SELECT
    c.ch_id,
    c.titulo,
    u.nome AS solicitante,
    s.nome_modulo AS modulo_afetado,
    c.status_ch,
    c.prioridade
FROM chamados_suporte c
JOIN usuarios u ON c.user_id = u.user_id
JOIN sistemas_modulos s ON c.sys_id = s.sys_id
ORDER BY c.ch_id ASC;

-- Volume de Chamados por Departamentos, usando GRUPO BY
SELECT
    d.nome_departamento,
    COUNT(c.ch_id) AS total_chamados
FROM departamentos d
LEFT JOIN usuarios u ON d.dep_id = u.dep_id
LEFT JOIN chamados_suporte c ON u.user_id = c.user_id
GROUP BY d.nome_departamento
ORDER BY total_chamados DESC;

-- Histórico de atendimento de um chamado especifico
SELECT 
    i.data_interacao,
    i.tecnico_resposavel,
    i.mensage_log
FROM interacoes_chamado i
WHERE i.ch_id = 6
ORDER BY i.data_interacao ASC;