# Ruta del archivo de entrada y directorio de salida
metagenome="/c/Users/User/Downloads/Bioinfo/2023I_gbi6_exam1/exam1/data/metagen/infants_metagenome.txt"
directorio="/c/Users/User/Downloads/Bioinfo/2023I_gbi6_exam1/exam1"

# Contar los registros hasta el nivel de especies
species_count=$(grep -c -E '\tSpecies\t' "$metagenome")

# Guardar el conteo en species_count.txt
echo "Número de registros hasta el nivel de especies: $species_count" > "$directorio/species_count.txt"

# Realizar la búsqueda de los fragmentos de interés y guardarlos en gata.txt
grep -E 'TATA GAGA GATA' "$metagenome" > "$directorio/gata.txt"
