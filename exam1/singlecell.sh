
# Ruta a la carpeta singlecell
singlecell="/c/Users/User/Downloads/Bioinfo/2023I_gbi6_exam1-main/exam1/data"

# Realizar la búsqueda de extensiones de archivos y guardar el conteo en extensiones.txt
ls -R "$singlecell" | grep -o -E '\.[a-zA-Z0-9]+$' | sort | uniq -c > extensiones.txt

echo "Conteo de extensiones de archivos completado y guardado en extensiones.txt."
