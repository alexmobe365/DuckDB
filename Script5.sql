SELECT cut, AVG(price)
FROM 'C:/ruta_de_tu_carpeta/diamantes_optimizados.parquet'
GROUP BY cut;