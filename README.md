# Uso del paquete rBLAST para el alineado y comparación de secuencias
 
 ## Instrucciones de uso

1.  Debe instalarse el algoritmo del blast de la página del NCBI. Puede descargarse en el siguiente enlance: [<https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=Download>] 

2.  Debe descargar la base de datos de interés, en este caso se van a realizar consultas para bacterias (16S) pero se puede consultar cualquier base de datos de interés. La base de datos fue descargada usando la siguiente dirección: [https://ftp.ncbi.nlm.nih.gov/blast/db/]

3.  Descargar el paquete rBLAST de GitHub. [<https://github.com/mhahsler/rBLAST>], para ello debe instalarse ciertas dependencias. En Windows debe instalarse Rtools, esta debe conincidir con la misma versión del lenguaje de R. Y posteriormente instalar el paquete devtools. Debe seguir los pasos correspondientes siguiendo la dirección:[https://www.r-project.org/nosvn/pandoc/devtools.html]

4. En caso de no funcionar instalarlo del reposiorio: [https://mhahsler.r-universe.dev/ui#packages], usando el siguiente código.

5. Cargar el paquete rBLAST y definir el directorio de trabajo. Desplazar o descargar la base de datos de interés en el fichero de trabajo.
 
6. Cargar la secuencia en formato FASTA a consultar, y guardarlos en una variable. Pero antes debe asegurarse que tipo de secuencia es ADN o ARN.

7. Cargar la base de datos de consulta y guardarla en una variable.

8. Usar la funcion predict para realizar la consulta a la base de datos


