--Quest�o 01 Buscar o nome e ano dos filmes:
SELECT Nome, Ano FROM Filmes
--Quest�o 02 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano:
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC
--Quest�o 03 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o:
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'
--Quest�o 04 Buscar os filmes lan�ados em 1997:
SELECT * FROM FILMES WHERE Ano = 1997
--Quest�o 05 Buscar os filmes lan�ados AP�S o ano 2000:
SELECT * FROM Filmes WHERE Ano > 2000
--Quest�o 06 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente:
SELECT * FROM Filmes WHERE duracao > 100 and duracao < 150 ORDER BY Duracao asc
--Quest�o 07 Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente:
SELECT Ano, COUNT(*)Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC
--Quest�o 08 Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome:
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'
--Quest�o 09 Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome: 
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC
--Quest�o 10 Buscar o nome do filme e o g�nero:
SELECT F.Nome, G.Genero FROM Filmes AS F INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme INNER JOIN Generos AS G ON G.Id = FG.IdGenero
--Quest�o 11 Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT F.Nome, G.Genero FROM Filmes AS F INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme INNER JOIN Generos AS G ON G.Id = FG.IdGenero WHERE Genero = 'Mist�rio'
--Quest�o 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel:
SELECT F.Nome NomedoFilme, A.PrimeiroNome, A.Ultimonome,E.Papel FROM Filmes AS F INNER JOIN Atores AS A ON F.Id = A.Id INNER JOIN ElencoFilme AS E ON E.Id = A.Id