	
-- Geração de outros objetos de banco de dados:
	
	-- Trigger: Gatilho, a partir de uma ação poderá ser eecutada outra ação.
	CREATE TRIGGER tr_criaTurma
	BEFORE INSERT
	ON tb_turma FOR EACH row
	begin 
		set new.tur_descricao = 'Tigrou!';
	end;
	
	-- View: Abstração de um select, de forma pré definida.
	CREATE VIEW vw_boletim AS select tt.tur_ano_letivo, tt.tur_nome, ta.alu_nome, td.dis_nome, tet.ens_tur_ensino ,tet.ens_tur_turno ,ta2.ava_u1, ta2.ava_u2, ta2.ava_u3, ta2.ava_u4 
	from tb_turma tt 
		inner join tb_aluno ta 
		on tt.aluno_id = ta.id
		inner join tb_disciplina td 
		on td.id = tt.disciplina_id 
		inner join tb_avaliacao ta2 
		on ta2.id  = tt.id
		inner join tb_ensino_turno tet 
		on tet.id  = tt.ensinoturno_id ;
	
	-- Stored Procedure: Procedimento, aqui conseguimos inserir lógica de programação. 
	CREATE PROCEDURE sp_geraMatriculaAluno(IN ano_letivo INT, in aluno_id INT, OUT matricula INT)
	BEGIN
			 DECLARE max_mat_id INT;
			 SELECT MAX(alu_matricula) INTO max_mat_id FROM tb_aluno ta;
			 SELECT (ano_letivo * 100000) + (max_mat_id + 1) into matricula;
			 update tb_aluno set alu_matricula = matricula where id = aluno_id;
	END;
