
# Contar el número de artículos en miRNA.dat
num_articles=$(grep -c "PUBMED" /c/Users/User/Downloads/Bioinfo/2023I_gbi6_exam1/exam1/data/miRNA.dat)

# Contar los estudios de micro RNA en la revista Nature
num_nature=$(grep -ci "Nature" /c/Users/User/Downloads/Bioinfo/2023I_gbi6_exam1/exam1/data/miRNA.dat)

# Contar los estudios de micro RNA en el organismo C. elegans
num_elegans=$(grep -ci "elegans" /c/Users/User/Downloads/Bioinfo/2023I_gbi6_exam1/exam1/data/miRNA.dat)

# Contar los micro RNA con longitud de 139 pares de bases
num_139bp=$(grep -c "139 BP" /c/Users/User/Downloads/Bioinfo/2023I_gbi6_exam1/exam1/data/miRNA.dat)

# Imprimir los resultados
echo "Número total de artículos: $num_articles", "Número de estudios en la revista Nature: $num_nature", "Número de estudios en C. elegans: $num_elegans", "Número de micro RNA con longitud de 139 pares de bases: $num_139bp" > elegans.txt
