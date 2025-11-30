USE sistema_escolar;

INSERT INTO diretor (nome) VALUES
('Carlos Menezes'),
('Ana Paula Silva');

INSERT INTO professor (nome) VALUES
('Marcos Oliveira'),
('Fernanda Souza'),
('João Pereira');

INSERT INTO aluno (nome, cpf, data_nascimento) VALUES
('Lucas Andrade', '11111111111', '2010-03-15'),
('Maria Santos', '22222222222', '2009-07-22'),
('João Carvalho', '33333333333', '2011-11-05'),
('Beatriz Lima', '44444444444', '2010-01-30'),
('Pedro Gonçalves', '55555555555', '2009-09-10');

INSERT INTO turma (serie, ano, codigo_diretor) VALUES
('6º ano A', 2024, 1),
('7º ano B', 2024, 1),
('8º ano A', 2024, 2);

INSERT INTO nota (valor, data, codigo_aluno, codigo_turma, codigo_professor) VALUES
(8.5, '2024-03-10', 1, 1, 1),
(7.0, '2024-03-10', 2, 1, 1),
(9.2, '2024-03-10', 3, 2, 2),
(6.8, '2024-03-15', 4, 2, 2),
(8.0, '2024-03-20', 5, 3, 3),
(5.5, '2024-03-20', 1, 3, 3),
(9.8, '2024-03-25', 2, 1, 2),
(7.5, '2024-03-25', 3, 2, 1);
