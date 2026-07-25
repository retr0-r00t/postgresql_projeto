-- ==================
-- Exemplos de DELETE
-- ==================

-- Inicio com Bloco Begin para caso de erro podermos dar um ROLLBACK
BEGIN;

-- Remoção de chamado criado para teste
DELETE FROM chamados_suporte
WHERE ch_id = 10 AND status_ch = 'RESOLVIDO';

-- Caso tudo tenha ocorrido corretamente COMMIT, caso tenha afetado o ID errado
-- ROLLBACK;
COMMIT;
ROLLBACK;

-- Exclusão de Chamados que foram Cancelados ou Testes
DELETE FROM interacoes_chamados
WHERE ch_od IN (
    SELECT ch_id
    FROM chamados_suporte
    WHERE status_ch IN ('CANCELADO')
);

-- Exclusão de usuário com tratamento de integridade
DELETE FROM usuarios
WHERE user_id = 5
    AND NOT EXISTS (
        SELECT 1
        FROM chamados_suporte
        WHERE user_id = 5
    );
