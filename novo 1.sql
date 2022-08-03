SELECT empresa.Nome AS 'Nome da Empresa', metal.Nome AS 'Nome do Metal', extracao.Data, extracao.QuantEmTonelada, cotacao.ValorKg FROM empresa, extracao, metal, cotacao
 WHERE 
 	cotacao.Data = extracao.Data 
    AND cotacao.FK_Metal_Simbolo = metal.Simbolo
    AND extracao.FK_Empresa_Id = empresa.Id 
    AND extracao.FK_Metal_Simbolo = metal.Simbolo 
    AND empresa.Nome = 'Vale'
    AND extracao.Data = '2019-01-01';
	
SELECT empresa.Nome AS 'Nome da Empresa', metal.Nome AS 'Nome do Metal', extracao.Data, extracao.QuantEmTonelada, 
(cotacao.ValorKg * extracao.QuantEmTonelada) AS 'ValorDosMetais'
FROM empresa, extracao, metal, cotacao
WHERE 
	cotacao.Data = extracao.Data 
	AND cotacao.FK_Metal_Simbolo = metal.Simbolo 
	AND extracao.FK_Empresa_Id = empresa.Id 
	AND extracao.FK_Metal_Simbolo = metal.Simbolo 
	AND empresa.Nome = 'Vale' 
	AND extracao.Data = '2019-01-01';
	
SELECT empresa.Nome AS 'Nome da Empresa', 
metal.Nome AS 'Nome do Metal', extracao.Data, 
extracao.QuantEmTonelada, cotacao.ValorKg, 
(cotacao.ValorKG * (extracao.QuantEmTonelada * 1000))
FROM empresa, extracao, metal, cotacao
 WHERE 
 	cotacao.Data = extracao.Data 
    AND cotacao.FK_Metal_Simbolo = metal.Simbolo
    AND extracao.FK_Empresa_Id = empresa.Id 
    AND extracao.FK_Metal_Simbolo = metal.Simbolo 
    AND empresa.Nome = 'Vale'
    AND extracao.Data = '2019-01-01';

-- O QUE A EMPRESSA VALE GANHOU COM CADA METAL	
SELECT empresa.Nome AS 'Nome da Empresa', 
metal.Nome AS 'Nome do Metal', extracao.Data, 
extracao.QuantEmTonelada, FORMAT(cotacao.ValorKg, 0, 'de_DE'), FORMAT((cotacao.ValorKG * (extracao.QuantEmTonelada * 1000)), 2, 'de_DE') AS 'ValorDosMetais'
FROM empresa, extracao, metal, cotacao
 WHERE 
 	cotacao.Data = extracao.Data 
    AND cotacao.FK_Metal_Simbolo = metal.Simbolo
    AND extracao.FK_Empresa_Id = empresa.Id 
    AND extracao.FK_Metal_Simbolo = metal.Simbolo 
    AND empresa.Nome = 'Vale'
    AND extracao.Data = '2019-01-01'
    AND cotacao.Data = '2019-01-01';

--	lUCRO TOTAL DA EMPRESA VALE NESSE DIA
SELECT empresa.Nome AS 'Nome da Empresa', 
metal.Nome AS 'Nome do Metal', extracao.Data, 
extracao.QuantEmTonelada, FORMAT(cotacao.ValorKg, 0, 'de_DE'), FORMAT(SUM((cotacao.ValorKG * (extracao.QuantEmTonelada * 1000))), 2, 'de_DE') AS 'ValorDosMetais'
FROM empresa, extracao, metal, cotacao
 WHERE 
 	cotacao.Data = extracao.Data 
    AND cotacao.FK_Metal_Simbolo = metal.Simbolo
    AND extracao.FK_Empresa_Id = empresa.Id 
    AND extracao.FK_Metal_Simbolo = metal.Simbolo 
    AND empresa.Nome = 'Vale'
    AND extracao.Data = '2019-01-01'
    AND cotacao.Data = '2019-01-01';