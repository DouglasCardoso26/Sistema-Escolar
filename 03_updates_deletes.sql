USE sistema_escolar;

SET SQL_SAFE_UPDATES = 0;

UPDATE nota
SET valor = 9.0
WHERE idNota = 1;

UPDATE aluno
SET nome = 'Maria dos Santos'
WHERE cpf = '22222222222';

UPDATE turma
SET codigo_diretor = 2
WHERE serie = '7º ano B' AND ano = 2024;

DELETE FROM nota
WHERE valor < 6.0
  AND data = '2024-03-20';

DELETE FROM aluno
WHERE codigo NOT IN (SELECT DISTINCT codigo_aluno FROM nota)
  AND nome = 'Pedro Gonçalves';

DELETE FROM turma
WHERE codigo NOT IN (SELECT DISTINCT codigo_turma FROM nota)
  AND ano = 2024
  AND serie = '8º ano A';