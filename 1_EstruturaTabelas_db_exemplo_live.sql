-- Início: 

	-- Criando o Banco de Dados: 
	CREATE DATABASE IF NOT EXISTS db_exemplo_live;

	-- Colocando o banco de dadso recém criado como principal:
	USE db_exemplo_live;

	-- Geração de Tabelas:

		-- Criação de tabela de aluno:
		CREATE TABLE tb_aluno (
		  alu_ativo tinyint(1) NOT NULL,
		  alu_matricula int(11) NOT NULL,
		  id bigint(20) NOT NULL AUTO_INCREMENT,
		  alu_cpf varchar(14) NOT NULL,
		  alu_nome varchar(60) NOT NULL,
		  PRIMARY KEY (id),
		  UNIQUE KEY UKcfctgqi072itqaqdqqn2l0d8u (alu_cpf)
		);
		
		-- Criação de tabela de responsável:
		CREATE TABLE tb_responsavel (
		  id bigint(20) NOT NULL AUTO_INCREMENT,
		  res_cpf varchar(14) NOT NULL,
		  res_nome varchar(60) NOT NULL,
		  res_parentesco varchar(14) NOT NULL,
		  PRIMARY KEY (id),
		  UNIQUE KEY UKlrtfdkyj7nvfokqh7jnf14yc (res_cpf)
		);

		-- Criação de tabela de alunoxresponsável, caracteriza um relacionamento (n,n) muitos para muitos: 
		CREATE TABLE tb_aluno_responsavel (
		  aluno_id bigint(20) NOT NULL,
		  responsavel_id bigint(20) NOT NULL,
		  PRIMARY KEY (aluno_id,responsavel_id),
		  KEY FK2x2tk6pmx0m56fmti9qbbsd8l (responsavel_id),
		  CONSTRAINT FK2x2tk6pmx0m56fmti9qbbsd8l FOREIGN KEY (responsavel_id) REFERENCES tb_responsavel (id),
		  CONSTRAINT FKcgxeefi6hcyj55dt64k1n7d44 FOREIGN KEY (aluno_id) REFERENCES tb_aluno (id)
		);
		
		-- Criação de tabela de avaliação:
		CREATE TABLE tb_avaliacao (
		  ava_rf decimal(3,1) DEFAULT NULL,
		  ava_rs1 decimal(3,1) DEFAULT NULL,
		  ava_rs2 decimal(3,1) DEFAULT NULL,
		  ava_u1 decimal(3,1) DEFAULT NULL,
		  ava_u1_ab1 decimal(3,1) DEFAULT NULL,
		  ava_u1_ab2 decimal(3,1) DEFAULT NULL,
		  ava_u1_ab3 decimal(3,1) DEFAULT NULL,
		  ava_u1_ab4 decimal(3,1) DEFAULT NULL,
		  ava_u1_ab5 decimal(3,1) DEFAULT NULL,
		  ava_u2 decimal(3,1) DEFAULT NULL,
		  ava_u2_ab1 decimal(3,1) DEFAULT NULL,
		  ava_u2_ab2 decimal(3,1) DEFAULT NULL,
		  ava_u2_ab3 decimal(3,1) DEFAULT NULL,
		  ava_u2_ab4 decimal(3,1) DEFAULT NULL,
		  ava_u2_ab5 decimal(3,1) DEFAULT NULL,
		  ava_u3 decimal(3,1) DEFAULT NULL,
		  ava_u3_ab1 decimal(3,1) DEFAULT NULL,
		  ava_u3_ab2 decimal(3,1) DEFAULT NULL,
		  ava_u3_ab3 decimal(3,1) DEFAULT NULL,
		  ava_u3_ab4 decimal(3,1) DEFAULT NULL,
		  ava_u3_ab5 decimal(3,1) DEFAULT NULL,
		  ava_u4 decimal(3,1) DEFAULT NULL,
		  ava_u4_ab1 decimal(3,1) DEFAULT NULL,
		  ava_u4_ab2 decimal(3,1) DEFAULT NULL,
		  ava_u4_ab3 decimal(3,1) DEFAULT NULL,
		  ava_u4_ab4 decimal(3,1) DEFAULT NULL,
		  ava_u4_ab5 decimal(3,1) DEFAULT NULL,
		  id bigint(20) NOT NULL AUTO_INCREMENT,
		  PRIMARY KEY (id)
		);
		
		-- Criação de tabela de discipinas:
		CREATE TABLE tb_disciplina (
		  dis_ativo tinyint(1) NOT NULL,
		  id bigint(20) NOT NULL AUTO_INCREMENT,
		  dis_nome varchar(50) NOT NULL,
		  PRIMARY KEY (id)
		);
		
		-- Criação de tabela de ensino/turno:
		CREATE TABLE tb_ensino_turno (
		  ens_tur_ativo tinyint(1) NOT NULL,
		  id bigint(20) NOT NULL AUTO_INCREMENT,
		  ens_tur_ensino varchar(50) NOT NULL,
		  ens_tur_turno varchar(50) NOT NULL,
		  PRIMARY KEY (id)
		);

		-- Criação de tabela de turma:
		CREATE TABLE tb_turma (
		  tur_ano_letivo int(11) DEFAULT NULL,
		  tur_ativo tinyint(1) NOT NULL,
		  aluno_id bigint(20) DEFAULT NULL,
		  avaliacao_id bigint(20) DEFAULT NULL,
		  disciplina_id bigint(20) DEFAULT NULL,
		  ensinoturno_id bigint(20) DEFAULT NULL,
		  id bigint(20) NOT NULL AUTO_INCREMENT,
		  tur_descricao varchar(10) DEFAULT NULL,
		  tur_ensino varchar(30) NOT NULL,
		  tur_nome varchar(20) NOT NULL,
		  PRIMARY KEY (id),
		  KEY FKi2uhqgs3af6nwoulp0mttfys2 (aluno_id),
		  KEY FK2v5ox0jvwa77di0xfejdon2ry (avaliacao_id),
		  KEY FKpioyg67woer3aykjgm3t5gp9g (disciplina_id),
		  KEY FKspwqfc8c7h9t36co9j3yrrgq6 (ensinoturno_id),
		  CONSTRAINT FK2v5ox0jvwa77di0xfejdon2ry FOREIGN KEY (avaliacao_id) REFERENCES tb_avaliacao (id),
		  CONSTRAINT FKi2uhqgs3af6nwoulp0mttfys2 FOREIGN KEY (aluno_id) REFERENCES tb_aluno (id),
		  CONSTRAINT FKpioyg67woer3aykjgm3t5gp9g FOREIGN KEY (disciplina_id) REFERENCES tb_disciplina (id),
		  CONSTRAINT FKspwqfc8c7h9t36co9j3yrrgq6 FOREIGN KEY (ensinoturno_id) REFERENCES tb_ensino_turno (id)
		);

-- Fim
