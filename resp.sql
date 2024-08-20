#1
select Nome, Ano from Filmes

#2
select Nome, ano, duracao from Filmes
order by ano asc 

#3
select nome, ano, duracao from Filmes
where nome = 'De Volta para o Futuro'

#4
select nome, ano, duracao from Filmes
where ano = 1997

#5
select nome, ano, duracao from Filmes
where ano > 2000

#6
select nome, ano, duracao from Filmes
where duracao > 100 and duracao < 150
order by duracao asc

#7
select ano, count(ano) as quantidade from Filmes
group by ano
order by quantidade desc

#8
select Id, PrimeiroNome, UltimoNome from Atores
where Genero = 'M'

#9
select Id, PrimeiroNome, UltimoNome from Atores
where Genero = 'F'
order by PrimeiroNome

#10
select fi.Nome, ge.Genero from FilmesGenero fg
inner join Files fi on fg.IdFilme = fi.Id
inner join Genero ge on fg.IdGenero = ge.Id

#11
select fi.Nome, ge.Genero from FilmesGenero fg
inner join Files fi on fg.IdFilme = fi.Id
inner join Genero ge on fg.IdGenero = ge.Id
where ge.Genero = 'Mistério'