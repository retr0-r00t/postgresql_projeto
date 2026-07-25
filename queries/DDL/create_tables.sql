-- Criação das Tabelas do Projeto postgreesql

--TABELA DE DEPARTAMENTOS
CREATE TABLE departamentos (
    dep_id SERIAL PRIMARY KEY,
    nome_departamento VARCHAR(100) NOT NULL UNIQUE,
    centro_custo VARCHAR(50) NOT NULL
);

--TABELA DE USUÁRIOS
CREATE TABLE usuarios (
    user_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    cargo VARCHAR(50) NOT NULL,
    dep_id INTEGER NOT NULL,

    CONSTRAINT fk_usuario_dep FOREIGN KEY (dep_id)
        REFERENCES departamentos(dep_id) ON DELETE RESTRICT
);

--TABELA DE MODULOS
CREATE TABLE sistemas_modulos (
    sys_id SERIAL PRIMARY KEY,
    nome_modulo VARCHAR(100) NOT NULL,
    erp_vinculado VARCHAR(100) NOT NULL,
    nivel_criticidade VARCHAR(20) NOT NULL
        CHECK (nivel_criticidade IN ('BAIXA', 'MEDIA', 'ALTA', 'CRITICA'))
);


--TABLETA DE CHAMADOS
CREATE TABLE chamados_suporte(
	ch_id SERIAL PRIMARY KEY,
	titulo VARCHAR(100) NOT NULL,
	descricao TEXT NOT NULL,
	user_id INTEGER NOT NULL,
	sys_id INTEGER NOT NULL,
    data_abertura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_fechamento TIMESTAMP NULL,
	status_ch VARCHAR (20) NOT NULL
        CHECK (status_ch IN ('ABERTO','EM_ANALISE', 'EM_ANDAMENTO', 'RESOLVIDO')),
	prioridade VARCHAR (20) NOT NULL
        CHECK (prioridade IN ('BAIXA', 'MEDIA', 'ALTA', 'CRITICA')),

    CONSTRAINT fk_chamado_user FOREIGN KEY (user_id)
        REFERENCES usuarios(user_id) ON DELETE RESTRICT,
    CONSTRAINT fk_chamado_modulo FOREIGN KEY (sys_id)
        REFERENCES sistemas_modulos(sys_id) ON DELETE RESTRICT
);

--TABELA DE INTERAÇÕES
CREATE TABLE interacoes_chamado(
	int_id SERIAL PRIMARY KEY,
	ch_id INTEGER NOT NULL,
	tecnico_resposavel VARCHAR(100) NOT NULL,
	mensage_log TEXT NOT NULL,
	data_interacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	CONSTRAINT fk_interacao_chamado FOREIGN KEY (ch_id)
		REFERENCES chamados_suporte(ch_id) ON DELETE CASCADE
);