USE teste;

SELECT 
    fr.nome_fornecedor AS FORNECEDOR,
    p.preco AS PREÇO
FROM fornecimento AS ft
INNER JOIN fornecedor AS fr ON ft.codigo_fornecedor = fr.codigo_fornecedor
INNER JOIN peca AS p ON ft.codigo_peca = p.codigo_peca
INNER JOIN carro AS c ON ft.codigo_carro = c.codigo_carro
WHERE p.nome_peca = 'Motor' 
AND c.nome_carro = 'Kombi'
AND fr.cidade = 'Vitória'
GROUP BY fr.codigo_fornecedor
ORDER BY p.preco ASC;