--1
SELECT Nome, Ano FROM Filmes;

--2
SELECT Nome, Ano FROM Filmes ORDER BY Ano;

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

--4
SELECT * FROM Filmes WHERE Ano = 1997;

--5
SELECT * FROM Filmes WHERE Ano > 2000;

--6
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150;

--7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8
SELECT * FROM Atores WHERE Genero = 'M'

--9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN dbo.FilmesGenero FG on F.Id = FG.IdFilme
INNER JOIN dbo.Generos G on G.Id = FG.IdGenero;

--11
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN dbo.FilmesGenero FG on F.Id = FG.IdFilme
INNER JOIN dbo.Generos G on G.Id = FG.IdGenero
WHERE Genero = 'Mistério';

--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F
INNER JOIN dbo.ElencoFilme EF on F.Id = EF.IdFilme
INNER JOIN dbo.Atores A on A.Id = EF.IdAtor;