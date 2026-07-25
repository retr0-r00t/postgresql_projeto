-- ===================
-- Exportação de Dados
-- ===================

-- Exportação de chamados pendentes para .csv
COPY (
    SELECT
        c.ch_id AS chamado,
        c.titulo,
        u.nome AS solicitante,
        s.nome_modulo AS sistema,
        c.prioridade,
        c.data_abertura
    FROM chamados_suporte c
    JOIN usuarios u ON c.user_id = u.user_id
    JOIN sistemas_modulos s ON c.sys_id = s.sys_id
    WHERE status_ch IN ('ABERTO', 'EM_ANALISE')
)
TO 'C:/Users/Public/relatorio_chamados.csv' 
WITH CSV HEADER DELIMITER ';';
