# Ruta del directorio
directorio="/c/Users/User/Downloads/Bioinfo/2023I_gbi6_exam1/exam1/data/denvint"

# Archivos .csv en el directorio
archivoscsv=$(ls "$directorio"/*.csv)

# Bucle for para contar filas y columnas en cada archivo .csv
for file in $archivoscsv; do
    # Nombre del archivo
    filename=$(basename "$file")
    
    # Contar filas
    rows=$(cat "$file" | wc -l)
    
    # Contar columnas
    columns=$(head -n 1 "$file" | tr ',' '\n' | wc -l)
    
    # Imprimir resultados
    echo "Archivo: $filename", "Número de filas: $rows", "Número de columnas: $columns"  >> denint.csv
done

