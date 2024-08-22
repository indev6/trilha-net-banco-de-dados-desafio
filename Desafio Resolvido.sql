-- Atividade 1 (Buscar ano e nome dos filmes)
SELECT Nome, Ano FROM Filmes

-- Atividade 2 (Buscar nom e ano dos filmes ordenado pelo ano de forma crescente)
SELECT Nome, Ano FROM Filmes ORDER BY Ano

-- Atividade 3 (Buscar o filmes De volta para o futuro, trazendo o nome, o ano e a duração)
SELECT * FROM Filmes WHERE Nome = 'De volta para o futuro'

-- Atividade 4 (Buscar filmes lançados em 1997)
SELECT * FROM Filmes WHERE Ano = 1997

--Atividade 5 (Buscar filmse lançados após o ano 2000)
SELECT * FROM Filmes WHERE Ano > 2000

--Atividade 6 (Buscar os filmes com a  duração maior que 100 e menor que 150, ordenado pela duração em ordem crescente
SELECT * FROM Filmes WHERE duracao > 100 AND Duracao < 150 ORDER BY Duracao

--Atividade 7 (Buscar quantidade de filmes lançados no ano, agrupado por ano ordenado pela quantidade em orde crescente)
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

--Atividade 8 (Buscar atores do Genero masculino, retornando o primeiro nome e o ultimo nome
SELECT * FROM Atores WHERE Genero = 'M'

--Atividade 9 (Buscar os atores do genero feminino, retornando o primeiro nome, ultimo nome, ordenado pelo primeiro nome
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--Atividade 10 (Buscar nome do filme e o genero)
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero on Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos on FilmesGenero.IdGenero = Generos.Id

--Atividade 11 (Buscar o nome do filme e o genero do tipo misterio
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero on Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos on FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'mistério'

--Atividade 12 (Buscar o nome do filme e os atores, trazendo o primeiro nome, o ultimo nome e seu papel
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes INNER JOIN ElencoFilme on Filmes.Id = ElencoFilme.IdFilme INNER JOIN Atores on ElencoFilme.IdAtor = Atores.Id




