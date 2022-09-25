----------------------------------------------------------------------------------------------------
                                      USE bdLivrariaBrasileira

		     --------------- MAKE FORM Kauan Amorim AND Bruno Teixeira -------------------

----------------------------------------------------------------------------------------------------

------------------------  a) O total de livros que começam com a letra P ---------------------------

   SELECT COUNT(tbLivro.codLivro) AS 'Livros com P' FROM tbLivro
      WHERE nomeLivro LIKE ('p%')

----------------------------------------------------------------------------------------------------

---------------------  b) O maior número de páginas entre todos os livros  -------------------------

  SELECT MAX (tbLivro.numPaginas) AS 'Maior número de Páginas' FROM tbLivro 

----------------------------------------------------------------------------------------------------

---------------------  c) Omenor número de páginas entre todos os livros  --------------------------

  SELECT MIN (tbLivro.numPaginas) AS 'Menor número de Páginas' FROM tbLivro

----------------------------------------------------------------------------------------------------

------------------------  d) A média de páginas entre todos os livros  -----------------------------

 SELECT AVG (tbLivro.numPaginas) AS 'Média de Páginas' FROM tbLivro

----------------------------------------------------------------------------------------------------

-----------------  e) A soma do número de páginas dos livros de editora código 01  -----------------

 SELECT SUM(numPaginas) AS 'Soma das páginas da editora 01' FROM tbLivro
    WHERE codEditora LIKE 1

----------------------------------------------------------------------------------------------------

---------------  f) A soma dos números de páginas dos livros que começam com a letra A  ------------   

 SELECT SUM(numPaginas) AS 'Soma das páginas dos livros com a letra A' FROM tbLivro
   WHERE nomeLivro LIKE ('A%')

-----------------------------------------------------------------------------------------------------

-----------  g) A média dos números de páginas dos livros que sejam do autor código 03  -------------

 SELECT AVG(numPaginas) AS 'Media das páginas dos livros do autor 03' FROM tbLivro
   WHERE codAutor = 3 

------------------------------------------------------------------------------------------------------

---------------------- h) A quantidade de livros da editora de código 04  ----------------------------

 SELECT COUNT(codLivro) AS 'Número de livros da editora 04' FROM tbLivro
  WHERE codEditora = 4 
------------------------------------------------------------------------------------------------------

-------  i) A média do número de páginas dos livros que tenham a palavra “estrela” em seu nome  ------

  SELECT AVG(numPaginas) AS 'Média do número de Páginas' FROM tbLivro
     WHERE nomeLivro LIKE ('%estrela%')  

------------------------------------------------------------------------------------------------------

---------------  j) A quantidade de livros que tenham a palavra “poema” em seu nome  -----------------

 SELECT AVG(tbLivro.codLivro) AS 'Número de livros com a palavr poema' FROM tbLivro
    WHERE nomeLivro LIKE ('%poema%')

------------------------------------------------------------------------------------------------------

------------------  k) A quantidade de livros agrupado pelo nome do gênero  --------------------------
 
  SELECT nomeGenero AS 'Gêneros',
    COUNT (tbLivro.codLivro) AS' Número dos livros' FROM tbLivro
     INNER JOIN tbGenero
	      ON tbGenero.codGenero = tbLivro.codGenero
		    GROUP BY tbGenero.nomeGenero

------------------------------------------------------------------------------------------------------

----------------------  l) A soma das páginas agrupada pelo nome do autor  ---------------------------

  SELECT nomeAutor AS 'Autores', 
     SUM (tbLivro.numPaginas) AS 'Soma das Páginas' FROM tbLivro
	    INNER JOIN tbAutor
		     ON tbAutor.codAutor = tbLivro.codAutor
			   GROUP BY tbAutor.nomeAutor

------------------------------------------------------------------------------------------------------

-------  m) A média de páginas agrupada pelo nome do autor em ordem alfabética (de A a Z)  -----------

	SELECT nomeAutor AS 'Autores',
	    AVG (tbLivro.numPaginas) FROM tbLivro
		  INNER JOIN tbAutor
		       ON tbAutor.codAutor = tbLivro.codAutor
	       GROUP BY tbAutor.nomeAutor 
		    ORDER BY nomeAutor ASC 

------------------------------------------------------------------------------------------------------

--  n) A quantidade de livros agrupada pelo nome da editora em ordem alfabética inversa (de Z a A)  --

	SELECT nomeEditora AS 'editoras', 
	   COUNT (codLivro) FROM tbLivro
	      INNER JOIN tbEditora
		       ON tbEditora.codEditora = tbLivro.codEditora
          GROUP BY tbEditora.nomeEditora
		    ORDER BY nomeEditora ASC

------------------------------------------------------------------------------------------------------

-----  o) A soma de pág dos livros agrupados pelo nome autor cujo nome comece com a letra “C”  -------

	SELECT nomeAutor AS 'Autores',
	   SUM (numPaginas) AS 'Soma das Páginas' FROM tbLivro
	     INNER JOIN tbAutor
		      ON tbAutor.codAutor = tbLivro.codAutor
               WHERE nomeAutor LIKE ('C%')
	    		 GROUP BY tbAutor.nomeAutor 
			
------------------------------------------------------------------------------------------------------

--------  p) A quantidade de livros agrupados pelo nome do autor, cujo nome do autor seja  -----------
------  “Machado de Assis” ou “Cora Coralina” ou “Graciliano Ramos” ou “Clarice Lispector”  ----------

  SELECT nomeAutor AS 'Autores',
     COUNT (codLivro) AS 'Número de Livros' FROM tbLivro 
	    INNER JOIN tbAutor
		    ON tbAutor.codAutor = tbLivro.codAutor
			  GROUP BY tbAutor.nomeAutor

------------------------------------------------------------------------------------------------------

-----  q) A soma das páginas dos livros agrupadas pelo nome da editora cujo número de páginas  -------
------------------------------ esteja entre 200 e 500 (inclusive)  -----------------------------------

	SELECT nomeEditora AS 'Editoras',
	   SUM (numPaginas) AS 'Soma Das Páginas' FROM tbLivro
	     INNER JOIN tbEditora
		     ON tbEditora.codEditora = tbLivro.codEditora
			   WHERE numPaginas BETWEEN  200 AND 500
			     GROUP BY tbEditora.nomeEditora

------------------------------------------------------------------------------------------------------

------------  r) O nome dos livros ao lado do nome das editoras e do nome dos autores  ---------------


------------------------------------------------------------------------------------------------------

-----  s) O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for  ------
--------------------------------------  “Cia das Letras”  --------------------------------------------


------------------------------------------------------------------------------------------------------