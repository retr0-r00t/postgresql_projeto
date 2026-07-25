-- ============================
-- Populcação das Tabelas do DB
-- ============================

--INSERÇÃO DE DEPARTAMENTOS
INSERT INTO departamentos (nome_departamento, centro_custo) VALUES
('TI', 'CC-01'),
('RH', 'CC-02'),
('FINANCEIRO', 'CC-03'),
('ALMOXARIFAXO', 'CC-04'),
('COMERCIAL', 'CC-.05');

--INSERÇÃO DE USUÁRIOS
INSERT INTO usuarios (nome, email, cargo, dep_id) VALUES
('Carlos Mendes', 'carlos.mendes@empresa.com.br', 'Analista Financeiro', 3),
('Ana Paula Souza', 'ana.souza@empresa.com.br', 'Coordenadora de Almoxarfiado', 4),
('Marcos Silva', 'marcos.silva@empresa.com.br', 'Assistente de Departamento Pessoal', 2),
('Juliana Costa', 'juliana.costa@empresa.com.br', 'Supervisora de Vendas', 5),
('Enzo Niches', 'Niches@empresa.com.br', 'Analista de Sistemas', 1);

--INSERÇÃO DE MODULOS
INSERT INTO sistemas_modulos (nome_modulo, erp_vinculado, nivel_criticidade) VALUES
('Emissão Fiscal', 'ERP Central', 'CRITICA'),
('Gestão de Estoque', 'Sistema de Almoxarifado', 'ALTA'),
('Folha de Pagamento e Benefícios', 'Suíte RH', 'CRITICA'),
('Portal de Vendas e CRM', 'CRM', 'MEDIA'),
('Infraestrutura, Rede e Hardware', 'Serviços Internos TI', 'ALTA');

--INSERÇÃO DE CHAMADOS
INSERT INTO chamados_suporte (titulo, descricao, user_id, sys_id, status_ch, prioridade, data_abertura, data_fechamento) VALUES
('Erro de sintaxe ao exportar relatório de faturamento', 'A rotina de geração do relatório fiscal está travando no módulo com erro de extração SQL. Necessária validação da query.', 1, 1, 'ABERTO', 'ALTA', '2026-07-20 08:30:00', NULL),
('Inconsistência na integração noturna de estoque', 'A automação que sincroniza o saldo do armazém com o ERP falhou durante a madrugada. Estoque físico diverge do sistema.', 2, 2, 'EM_ANALISE', 'CRITICA', '2026-07-21 09:15:00', NULL),
('Dúvida no filtro de períodos para cálculo de férias', 'Usuário relata dificuldade operacional para selecionar o corte de datas correto na tela de espelho de ponto.', 3, 3, 'RESOLVIDO', 'MEDIA', '2026-07-22 10:00:00', '2026-07-22 11:30:00'),
('Impressora térmica de etiquetas não comunica', 'Equipamento do setor de expedição perdeu a conexão com o terminal local. Luz de erro piscando e fila de impressão travada.', 2, 5, 'ABERTO', 'MEDIA', '2026-07-23 11:45:00', NULL),
('Timeout e lentidão na extração de comissões', 'O relatório mensal de vendas está demorando mais de 5 minutos para rodar e caindo por tempo limite. Necessário otimizar consulta.', 4, 4, 'EM_ANALISE', 'ALTA', '2026-07-24 14:20:00', NULL),
('Erro de chave duplicada ao salvar lote contábil', 'O sistema impede o fechamento do lote fiscal apresentando mensagem de violação de chave primária duplicada na tabela temporária.', 1, 1, 'RESOLVIDO', 'CRITICA', '2026-07-24 16:00:00', '2026-07-24 17:45:00'),
('Leitor de código de barras não insere dados', 'O leitor óptico da bancada do almoxarifado bipou de forma incorreta e desconfigurou o salto de linha após a leitura do código no WMS.', 2, 5, 'RESOLVIDO', 'BAIXA', '2026-07-24 16:30:00', '2026-07-24 17:00:00'),
('Divergência de máscara de data no arquivo de ponto', 'A importação do arquivo texto do relógio de ponto foi rejeitada pelo ERP de Folha devido ao formato MM/DD/YYYY.', 3, 3, 'RESOLVIDO', 'ALTA', '2026-07-25 08:00:00', '2026-07-25 09:30:00'),
('Tela de histórico de clientes travada no CRM', 'Usuários da equipe comercial não conseguem acessar o cadastro de clientes. Verificado possível lock de transação no banco de dados.', 4, 4, 'ABERTO', 'CRITICA', '2026-07-25 09:00:00', NULL),
('Apoio operacional para extração de dados em Excel', 'Solicitação de auxílio da equipe financeira para exportar uma grade customizada de faturamento com delimitador para planilha Excel.', 1, 1, 'RESOLVIDO', 'BAIXA', '2026-07-25 10:00:00', '2026-07-25 10:45:00');

--INSERÇÃO DE INTERAÇÕES
INSERT INTO interacoes_chamado (ch_id, tecnico_resposavel, mensage_log, data_interacao) VALUES
(2, 'Enzo Niches', 'Análise de log de integração iniciada. Identificado que a rotina automatizada falhou ao encontrar o serviço de WMS ativo. Reiniciando o serviço e reprocessando a fila.', '2026-07-21 09:30:00'),
(3, 'Enzo Niches', 'Acesso remoto realizado via ferramenta de suporte. Orientado o colaborador quanto à marcação do checkbox de período aquisitivo. Dúvida operacional sanada e chamado encerrado.', '2026-07-22 10:30:00'),
(5, 'Enzo Niches', 'Analisado o plano de execução da query no banco de dados. A consulta estava fazendo um FULL JOIN sem índice na tabela de vendas. Criando índice para otimização da extração.', '2026-07-24 15:00:00'),
(6, 'Enzo Niches', 'Identificada falha na procedure de limpeza da tabela temporária de impostos. A sequência da coluna ID não havia sido resetada. Script de correção executado com sucesso no PostgreSQL.', '2026-07-24 16:45:00'),
(7, 'Enzo Niches', 'Atendimento presencial na bancada. Realizada a leitura do código de barras de reconfiguração de fábrica do leitor e restaurado o sufixo de "Enter". Equipamento testado e aprovado.', '2026-07-24 16:50:00'),
(8, 'Enzo Niches', 'Analisado o arquivo .TXT do relógio de ponto. Aplicado um script rápido de manipulação de string para alterar a estrutura de datas de MM/DD/YYYY para DD/MM/YYYY. Importação concluída sem erros no ERP.', '2026-07-25 09:00:00'),
(10, 'Enzo Niches', 'Auxiliado o usuário na exportação nativa do sistema utilizando o delimitador ponto e vírgula (;). Planilha aberta no Excel sem quebra de colunas.', '2026-07-25 10:30:00');