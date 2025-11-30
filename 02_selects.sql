USE sistema_escolar;

-- 1) Alunos e suas turmas
SELECT DISTINCT
    a.codigo AS codigo_aluno,
    a.nome   AS nome_aluno,
    t.serie  AS turma,
    t.ano
FROM aluno a
JOIN nota  n ON n.codigo_aluno = a.codigo
JOIN turma t ON t.codigo = n.codigo_turma
ORDER BY t.ano DESC, t.serie, a.nome;

-- 2) Notas de um aluno específico
SELECT
    a.nome   AS aluno,
    t.serie  AS turma,
    n.valor  AS nota,
    n.data
FROM nota n
JOIN aluno a ON a.codigo = n.codigo_aluno
JOIN turma t ON t.codigo = n.codigo_turma
WHERE a.nome = 'Lucas Andrade'
ORDER BY n.data DESC;

-- 3) Média de notas por aluno
SELECT
    a.nome AS aluno,
    ROUND(AVG(n.valor), 2) AS media_notas
FROM nota n
JOIN aluno a ON a.codigo = n.codigo_aluno
GROUP BY a.codigo, a.nome
ORDER BY media_notas DESC
LIMIT 5;

-- 4) Turmas e seus diretores
SELECT
    t.codigo,
    t.serie,
    t.ano,
    d.nome AS diretor_responsavel
FROM turma t
JOIN diretor d ON d.codigo = t.codigo_diretor
ORDER BY t.ano, t.serie;

-- 5) Notas lançadas por professor
SELECT
    p.nome AS professor,
    COUNT(n.idNota)      AS quantidade_notas,
    ROUND(AVG(n.valor),2) AS media_geral
FROM nota n
JOIN professor p ON p.codigo = n.codigo_professor
GROUP BY p.codigo, p.nome
ORDER BY quantidade_notas DESC;

