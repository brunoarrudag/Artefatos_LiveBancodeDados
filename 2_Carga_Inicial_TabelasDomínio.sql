-- Cargas de tabelas domínio no banco de dados: 

	-- Carga da tabela de disciplinas:
	INSERT INTO tb_disciplina (dis_ativo, id, dis_nome) VALUES
		(1, 1, 'Língua Portuguesa'),
		(1, 2, 'Arte'),
		(1, 3, 'Educação Física'),
		(1, 4, 'Matemática'),
		(1, 5, 'Ciências'),
		(1, 6, 'História'),
		(1, 7, 'Geografia'),
		(1, 8, 'Ensino Religioso'),
		(1, 9, 'Inglês'),
		(1, 10, 'Cidadania, moral e ética'),
		(1, 11, 'Espanhol'),
		(1, 12, 'Literatura'),
		(1, 13, 'Produção Textual'),
		(1, 14, 'Teoria Musical'),
		(1, 15, 'Ciências 2'),
		(1, 16, 'Ciências 1'),
		(1, 17, 'Química'),
		(1, 18, 'Física'),
		(1, 19, 'Biologia'),
		(1, 20, 'Filosofia'),
		(1, 21, 'Sociologia'),
		(1, 22, 'Geometria'),
		(1, 23, 'Oficina de negócios '),
		(1, 24, 'Oficina das emoções'),
		(1, 25, 'Gramática'),
		(1, 26, 'Linguagem'),
		(1, 27, 'Natureza e Sociedade');

	-- Carga da tabela de turno/ensino
	INSERT INTO tb_ensino_turno (ens_tur_ativo, id, ens_tur_ensino, ens_tur_turno) VALUES
		(1, 1, 'Ensino Infantil', 'Manhã'),
		(1, 2, 'Ensino Fundamental I', 'Manhã'),
		(1, 3, 'Ensino Fundamental II', 'Manhã'),
		(1, 4, 'Ensino Médio', 'Manhã'),
		(1, 5, 'Ensino Infantil', 'Tarde'),
		(1, 6, 'Ensino Fundamental I', 'Tarde'),
		(1, 7, 'Ensino Fundamental II', 'Tarde'),
		(1, 8, 'Ensino Médio', 'Tarde'),
		(1, 9, 'Ensino Infantil', 'Noite'),
		(1, 10, 'Ensino Fundamental I', 'Noite'),
		(1, 11, 'Ensino Fundamental II', 'Noite'),
		(1, 12, 'Ensino Médio', 'Noite');