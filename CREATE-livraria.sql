           CREATE DATABASE bdLivrariaBrasileira
---------------------------------------------------------------
                 USE bdLivrariaBrasileira
---------------------------------------------------------------
CREATE TABLE tbEditora
(
	codEditora INT IDENTITY(1,1) PRIMARY KEY
	, nomeEditora VARCHAR(60) NOT NULL
)
----------------------------------------------------------------
CREATE TABLE tbAutor 
(
	codAutor INT IDENTITY(1,1) PRIMARY KEY
	, nomeAutor VARCHAR(60) NOT NULL
)
-----------------------------------------------------------------
CREATE TABLE tbGenero
(
	codGenero INT IDENTITY(1,1) PRIMARY KEY
	, nomeGenero VARCHAR(60) NOT NULL
)
-----------------------------------------------------------------
CREATE TABLE tbLivro
(
	codLivro INT IDENTITY(1,1) PRIMARY KEY
	, nomeLivro VARCHAR(60) NOT NULL
	, numPaginas INT NOT NULL
	, codGenero INT FOREIGN KEY REFERENCES tbGenero(codGenero)
	, codAutor INT FOREIGN KEY REFERENCES tbAutor(codAutor)
	, codEditora INT FOREIGN KEY REFERENCES tbEditora(codEditora)
)
------------------------------------------------------------------

