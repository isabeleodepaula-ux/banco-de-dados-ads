-- Exercício 1: Liste o nome e o preço de cada produto, acrescentando uma coluna que apresente o preço arredondado para baixo.
SELECT
    nome,
    estoque,
    FLOOR(estoque / 6) AS caixas_completas
FROM produtos;
 
-- Exercício 2: calcular caixas completas com 6 unidades
-- Observação: este comando está igual ao exercício 1.
SELECT
    nome,
    estoque,
    FLOOR(estoque / 6) AS caixas_completas
FROM produtos;
 
-- Exercício 3: calcular kits completos com 4 unidades
SELECT
    nome,
    estoque,
    FLOOR(estoque / 4) AS kits_completos
FROM produtos;
 
-- Exercício 4: calcular a média dos preços por categoria,
-- arredondando o resultado para baixo.
SELECT
    categoria_id,
    AVG(preco) AS media_original,
    FLOOR(AVG(preco)) AS media_arredondada_baixo
FROM produtos
GROUP BY categoria_id;
 
