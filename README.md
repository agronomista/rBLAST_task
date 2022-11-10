# Uso del paquete rBLAST para el alineado y comparación de secuencias
 
 ## Instrucciones de uso

1.  Debe instalarse el algoritmo del blast de la página del NCBI. Puede descargarse en el siguiente enlance: [<https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=Download>] 

2.  Debe descargar la base de datos de interés, en este caso se van a realizar consultas para bacterias (16S) pero se puede consultar cualquier base de datos de interés. La base de datos fue descargada usando la siguiente dirección: [https://ftp.ncbi.nlm.nih.gov/blast/db/], también puede ser descargada utilizando el siguiente código: 
```R
download.file("https://ftp.ncbi.nlm.nih.gov/blast/db/16S_ribosomal_RNA.tar.gz",
   "16S_ribosomal_RNA.tar.gz", mode='wb')
```

3.  Descargar el paquete rBLAST de GitHub. [<https://github.com/mhahsler/rBLAST>], para ello debe instalarse ciertas dependencias. En Windows debe instalarse Rtools, esta debe conincidir con la misma versión del lenguaje de R. Y posteriormente instalar el paquete devtools. Debe seguir los pasos correspondientes siguiendo la dirección:[https://www.r-project.org/nosvn/pandoc/devtools.html]
```R
#Cargar el paquete devtools
library(devtools)
#Instalar el paquete rblast mediante la librería devtools
devtools::install_github("mhahsler/rBLAST")
```
4. En caso de no funcionar instalarlo del reposiorio: [https://mhahsler.r-universe.dev/ui#packages], usando el siguiente código.
```R
install.packages('rBLAST', repos = 'https://mhahsler.r-universe.dev')
```

5. Cargar el paquete rBLAST y definir el directorio de trabajo. Desplazar o descargar la base de datos de interés en el fichero de trabajo.
 
6. Cargar la secuencia en formato FASTA a consultar, y guardarlos en una variable. Pero antes debe asegurarse que tipo de secuencia es ADN o ARN.
```R
seq <- readRNAStringSet(system.file("examples/RNA_example.fasta",
                        package="rBLAST"))
```

7. Cargar la base de datos de consulta y guardarla en una variable.
```R
bl <- blast(db="./16S_ribosomal_RNA")
```
8. Usar la funcion predict para realizar la consulta a la base de datos
```R
cl <- predict(bl, seq[1,])
cl[1:5,]

  QueryID   SubjectID Perc.Ident Alignment.Length Mismatches Gap.Openings Q.start Q.end S.start
1    1675 NR_104821.1     90.816             1459        124            8      16  1468       5
2    1675 NR_117601.1     85.896             1255        160           15     229  1478     237
3    1675 NR_117601.1     93.846               65          4            0       5    69       1
4    1675 NR_074549.1     85.896             1255        160           15     229  1478     241
5    1675 NR_074549.1     94.203               69          4            0       1    69       1
  S.end        E Bits
1  1459 0.00e+00 1943
2  1479 0.00e+00 1321
3    65 7.21e-20   99
4  1483 0.00e+00 1321
5    69 4.31e-22  106

```

