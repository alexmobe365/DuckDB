import duckdb

# 1. Crear la conexión y el archivo físico de la base de datos
con = duckdb.connect('diamantes_db.duckdb')

# 2. Leer el CSV y crear la tabla en un solo paso
con.execute("""
    CREATE TABLE diamantes AS
    SELECT * FROM read_csv_auto('diamonds.csv')
""")

print("Base de datos 'diamantes_db.duckdb' creada con éxito.")
con.close()