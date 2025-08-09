SELECT Nome, Ano FROM dbo.Filmes

SELECT Nome, Ano FROM dbo.Filmes ORDER BY ano ASC

SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE id=28

SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano=1997

SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano > 2000

SELECT Nome, Ano, Duracao FROM dbo.Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

SELECT Ano, COUNT(*) AS Quantidade
FROM dbo.Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

SELECT PrimeiroNome, UltimoNome, Genero FROM dbo.Atores WHERE Genero='M'

SELECT PrimeiroNome, UltimoNome, Genero FROM dbo.Atores WHERE Genero='F' ORDER BY PrimeiroNome ASC

SELECT f.Nome AS Nome,
       g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id

SELECT f.Nome AS Nome,
       g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

SELECT f.Nome AS Nome,
       a.PrimeiroNome,
       a.UltimoNome,
       ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id