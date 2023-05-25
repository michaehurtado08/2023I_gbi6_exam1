
# Archivo de entrada y directorio de salida
sitescsv="/c/Users/User/Downloads/Bioinfo/2023I_gbi6_exam1/exam1/data/mahomes/sites.csv"
directorio="/c/Users/User/Downloads/Bioinfo/2023I_gbi6_exam1/exam1"

# Extraer las columnas y guardar en pdb.csv
cut -d ',' -f 5,18,21 "$sitescsv" > "$directorio/pdb.csv"

# Calcular el conteo de tipos únicos en cada columna
resName_count=$(cut -d ',' -f 1 "$directorio/pdb.csv" | sort | uniq -c)
PDB_count=$(cut -d ',' -f 2 "$directorio/pdb.csv" | sort | uniq -c)
Uniprot_count=$(cut -d ',' -f 3 "$directorio/pdb.csv" | sort | uniq -c)

# Guardar el conteo en pdb_count.csv
echo "$resName_count" > "$directorio/pdb_count.csv"
echo "$PDB_count" >> "$directorio/pdb_count.csv"
echo "$Uniprot_count" >> "$directorio/pdb_count.csv"
