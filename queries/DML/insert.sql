--POPULAÇÃO DO DB

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
INSERT INTO chamados_suporte (tiutlo, descricao, user_id, sys_id, status_ch, prioridade, data_abertura) VALUES
('Dúvida no filtro de períodos contábeis', 'Usuário relata dificuldade em extrair o balancete com o corte de datas correto no módulo fiscal.', 1, 1, 'ABERTO', 'ALTA', '2026-07-20 08:30:00'),
('Inconsistência na baixa automática de estoque', 'A rotina noturna de atualização de saldo de produtos gerou divergência entre o almoxarifado físico e o sistema central.', 2, 2, 'EM_ANALISE', 'URGENTE', '2026-07-21 09:15:00'),
('Erro de validação em cadastro de colaboradores', 'O sistema está impedindo o salvamento de novos perfis devido a uma falha de chave duplicada no banco de dados.', 3, 3, 'RESOLVIDO', 'MEDIA', '2026-07-22 10:00:00'),
('Falha de comunicação na impressora de etiquetas', 'Equipamento do almoxarifado não imprime códigos de barra. Luz de erro piscando e sem conexão com o terminal.', 2, 5, 'ABERTO', 'MEDIA', '2026-07-23 11:45:00'),
('Lentidão ao exportar relatório de comissões', 'O relatório mensal de vendas está apresentando erro de timeout após 3 minutos de processamento no CRM. Necessária revisão na extração dos dados.', 4, 4, 'EM_ANALISE', 'ALTA', '2026-07-24 14:20:00');

--INSERÇÃO DE INTERAÇÕES
INSERT INTO interacoes_chamado (ch_id, tecnico_resposavel, mensagem_log, data_interacao) VALUES
(2, 'Enzo Niches', 'Análise de log iniciada. Identificado que o script de sincronização falhou ao processar um lote do almoxarifado. Tratamento de exceção em desenvolvimento.', '2026-07-21 09:30:00'),
(3, 'Enzo Niches', 'Realizado atendimento remoto com o usuário do RH. Orientado sobre a utilização correta dos parâmetros de data na tela de geração de relatórios. Chamado encerrado.', '2026-07-22 10:30:00'),
(5, 'Enzo Niches', 'Verificada a tabela de vendas no banco de dados. A consulta SQL utilizada na tela estava realizando uma extração sem índice. Executada rotina de correção e otimização.', '2026-07-24 15:00:00');