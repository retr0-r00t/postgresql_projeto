# 🛠️ Sistema Corporativo de Gestão de Suporte de TI (Mini-ITSM)

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![SQL](https://img.shields.io/badge/SQL-Análise_e_Relatórios-005571?style=for-the-badge)](https://en.wikipedia.org/wiki/SQL)

## 📌 Sobre o Projeto
Este projeto simula o banco de dados de um sistema de **Gestão de Chamados e Suporte Técnico Corporativo**. 

O objetivo é demonstrar domínio prático em arquitetura relacional, manipulação de dados e extração de relatórios analíticos utilizando **PostgreSQL**, auxiliando no diagnóstico de incidentes, controle de SLAs e monitoramento de falhas em sistemas corporativos e módulos ERP.

---

## 🎯 Habilidades Demonstradas
- **DDL (Data Definition Language):** Criação de tabelas normatizadas, chaves primárias (`PK`), chaves estrangeiras (`FK`) e regras de integridade (`ON DELETE RESTRICT/CASCADE`).
- **DML (Data Manipulation Language):** Povoamento de dados com cenários reais de Help Desk, além de atualizações e exclusões seguras utilizando transações (`BEGIN`, `COMMIT`, `ROLLBACK`).
- **DQL (Data Query Language):** Consultas avançadas utilizando `JOIN`, `GROUP BY`, agregações e CTEs (`WITH`) para extração de relatórios operacionais.

---

## 📐 Estrutura do Banco de Dados
O sistema é composto por 5 tabelas relacionais:

1. **`departamentos`**: Cadastro dos setores e centros de custo da empresa.
2. **`usuarios`**: Funcionários solicitantes e analistas técnicos do sistema.
3. **`sistemas_modulos`**: Catálogo de módulos corporativos (ERP, CRM, Folha) e níveis de criticidade.
4. **`chamados_suporte`**: Registro central dos tickets, contendo descrições técnicas, status, prioridade e datas de SLA.
5. **`interacoes_chamado`**: Histórico detalhado de atendimentos e soluções técnicas aplicadas.

---

## 📁 Estrutura do Repositório

```text
📁 postgresql_projeto/
 ├── 📁 DDL/
 │    └── create_tables.sql      # Criação das tabelas, tipos, constraints e FKs
 ├── 📁 DML/
 │    ├── insert_data.sql        # Povoamento inicial (usuários, módulos, chamados)
 │    ├── update_examples.sql    # Exemplos práticos de evolução de chamados (UPDATE)
 │    └── delete_examples.sql    # Exemplos seguros de exclusão com transação (DELETE)
 ├── 📁 DQL/
 │    ├── basic_queries.sql      # Consultas de rotina (WHERE, ORDER BY, LIMIT)
 │    ├── analytical_queries.sql # Relatórios gerenciais (JOINs, GROUP BY, CTEs/WITH)
 │    └── export_extraction.sql  # Scripts de extração para CSV (COPY / \copy)
 └── README.md