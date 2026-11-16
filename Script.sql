SELECT
    cut AS tipo_corte,
    COUNT(*) AS cantidad,
    ROUND(AVG(price), 2) AS precio_medio,
    MAX(price) AS precio_maximo
FROM diamantes
GROUP BY cut
ORDER BY precio_medio DESC;