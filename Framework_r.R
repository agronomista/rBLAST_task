#cargar la librería rBLAST
library(rBLAST)

#cargar secuencia de interés, usando el formato fasta
seq <- readRNAStringSet(system.file("examples/RNA_example.fasta",
                                    package="rBLAST"))

#cargar la base de datos a consultar (previamente descargada)
bl <- blast(db="./16S_ribosomal_RNA")

#Utilizar la función predict para observar la consulta
cl <- predict(bl, seq[1,])
cl[1:5,]