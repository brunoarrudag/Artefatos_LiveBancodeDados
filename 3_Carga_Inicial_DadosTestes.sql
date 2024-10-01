-- Geração de massa de dados para testes 

	-- Cadastrando Alunos
	INSERT INTO tb_aluno (alu_ativo, alu_matricula, id, alu_cpf, alu_nome) VALUES
		(1, 1, 1, '000.000.000-00', 'João pé de Feijão'),
		(1, 1, 2, '111.111.111-11', 'Maria Moura'),
		(1, 1, 3, '222.222.222-33', 'Pedro Pedrada'),
		(1, 1, 4, '333.333.333-33', 'Jé da Feira'),
		(1, 1, 5, '444.444.444-44', 'Bruno'),
		(1, 1, 6, '555.555.555-55', 'Jaqueline Silva'),
		(1, 1, 7, '666.666.666-66', 'Felipe Soares'),
		(1, 1, 8, '777.777.777-77', 'Antonio Brito'),
		(1, 1, 9, '888.888.888-88', 'Salustiano Salustino'),
		(1, 1, 10, '999.999.999-99', 'Ewerton Mario');

	-- Cadastrando Responsáveis
	INSERT INTO tb_responsavel (id, res_cpf, res_nome, res_parentesco) VALUES
		(1, '000-000-000-00', 'Maria José', 'Mãe'),
		(2, '111-111-111-11', 'Pedro Antônio', 'Pai'),
		(3, '222-222-222-22', 'Sulamita Soares', 'Mãe'),
		(4, '333-333-333-33', 'Antônio Arruda', 'Pai'),
		(5, '444-444-444-44', 'Josefa Pereira', 'Avó'),
		(6, '555-555-555-55', 'Severino Biu', 'Avô'),
		(7, '666-666-666-66', 'Bruno Uno', 'Tio'),
		(8, '777-777-777-77', 'Mariana Pé de Ana', 'Tia'),
		(9, '999.999.999-99', 'José Neves', 'Primo');

	-- Vinculando alunos a responsáveis
	INSERT INTO tb_aluno_responsavel (aluno_id, responsavel_id) VALUES
		(1, 1),
		(2, 1),
		(7, 1),
		(1, 2),
		(2, 2),
		(7, 2),
		(3, 3),
		(4, 3),
		(8, 3),
		(3, 4),
		(4, 4),
		(8, 4),
		(5, 5),
		(9, 5),
		(5, 6),
		(9, 6),
		(6, 7),
		(10, 7),
		(6, 8),
		(10, 8);

	-- Gerando dados de avaliação:
	INSERT INTO tb_avaliacao (ava_rf, ava_rs1, ava_rs2, ava_u1, ava_u1_ab1, ava_u1_ab2, ava_u1_ab3, ava_u1_ab4, ava_u1_ab5, ava_u2, ava_u2_ab1, ava_u2_ab2, ava_u2_ab3, ava_u2_ab4, ava_u2_ab5, ava_u3, ava_u3_ab1, ava_u3_ab2, ava_u3_ab3, ava_u3_ab4, ava_u3_ab5, ava_u4, ava_u4_ab1, ava_u4_ab2, ava_u4_ab3, ava_u4_ab4, ava_u4_ab5, id) VALUES
		(NULL, NULL, NULL, 8.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
		(NULL, NULL, NULL, 8.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
		(NULL, NULL, NULL, 8.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
		(NULL, NULL, NULL, 8.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
		(NULL, NULL, NULL, 8.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5);

	-- Gerando as turmas:
	INSERT INTO tb_turma (tur_ano_letivo, tur_ativo, aluno_id, avaliacao_id, disciplina_id, ensinoturno_id, id, tur_descricao, tur_ensino, tur_nome) VALUES
		(2024, 1, 1, 1, 25, 4, 1, '', '', 'Turma 1'),
		(2024, 1, 2, 2, 25, 4, 2, '', '', 'Turma 2'),
		(2024, 1, 6, 3, 25, 4, 3, '', '', 'Turma 3'),
		(2024, 1, 7, 4, 25, 8, 4, '', '', 'Turma 4'),
		(2024, 1, 9, 5, 25, 8, 5, '', '', 'Turma 5');