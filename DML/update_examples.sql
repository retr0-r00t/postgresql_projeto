-- ==================
-- Exemplos de UPDATE
-- ==================

-- Troca de Status em um Chamado Aberto
UPDATE chamados_suporte
SET status_ch = 'EM_ANALISE'
WHERE ch_id = 1 AND status_ch = 'ABERTO';

-- Troca de Prioridade
UPDATE chamados_suporte
SET prioridade = 'CRITICA'
WHERE ch_id = 4;

-- Encerramento de Chamado com o Carimbo data/hora
UPDATE chamados_suporte
SET status_ch = 'RESOLVIDO',
    data_fechamento = CURRENT_TIMESTAMP
WHERE ch_id = 9 AND status_ch = 'EM_ANALISE';

-- Troca em Bloco de Cargo e Departamento
UPDATE usuarios
SET (cargo, dep_id) = ('Coordenador Financeiro', 2)
WHERE user_id = 1;

-- Alteração de Status en todos chamados com um nivel de prioridade
UPDATE chamados_suporte
SET status_ch = 'EM_ANALISE'
WHERE prioridade = 'CRITICA' AND status_ch = 'ABERTO';