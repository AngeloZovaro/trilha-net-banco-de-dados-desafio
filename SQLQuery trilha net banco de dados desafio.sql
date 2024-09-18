--Questão 01 Buscar o nome e ano dos filmes:
SELECT Nome, Ano FROM Filmes
--Questão 02 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano:
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC
--Questão 03 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração:
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'
--Questão 04 Buscar os filmes lançados em 1997:
SELECT * FROM FILMES WHERE Ano = 1997
--Questão 05 Buscar os filmes lançados APÓS o ano 2000:
SELECT * FROM Filmes WHERE Ano > 2000
--Questão 06 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente:
SELECT * FROM Filmes WHERE duracao > 100 and duracao < 150 ORDER BY Duracao asc
--Questão 07 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente:
SELECT Ano, COUNT(*)Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC
--Questão 08 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome:
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'
--Questão 09 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome: 
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC
--Questão 10 Buscar o nome do filme e o gênero:
SELECT F.Nome, G.Genero FROM Filmes AS F INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme INNER JOIN Generos AS G ON G.Id = FG.IdGenero
--Questão 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, G.Genero FROM Filmes AS F INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme INNER JOIN Generos AS G ON G.Id = FG.IdGenero WHERE Genero = 'Mistério'
--Questão 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel:
SELECT F.Nome NomedoFilme, A.PrimeiroNome, A.Ultimonome,E.Papel FROM Filmes AS F INNER JOIN Atores AS A ON F.Id = A.Id INNER JOIN ElencoFilme AS E ON E.Id = A.Id