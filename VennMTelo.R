library(Biostrings)
library(VennDiagram)


workingDir <- "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.2.Collapsed_Merged_Libraries/"
setwd(workingDir)
getwd()


Ofas <- readDNAStringSet("Oncopeltus_fasciatus.fasta.collapsed.fa")
Ofas_piRNA <- as.data.frame(Ofas)$x

Apisum <- readDNAStringSet("Acyrtosiphon_pisum.fasta.collapsed.fa")
Apisum_piRNA <- as.data.frame(Apisum)$x

Tcas <- readDNAStringSet("Tribolium_castaneum.fasta.collapsed.fa")
Tcas_piRNA <- as.data.frame(Tcas)$x

Dvir <- readDNAStringSet("Diabrotica_virgifera.fasta.collapsed.fa")
Dvir_piRNA <- as.data.frame(Dvir)$x

Nves <- readDNAStringSet("Nicrophorus_vespilloides.fasta.collapsed.fa")
Nves_piRNA <- as.data.frame(Nves)$x

venn.diagram(x=list(Ofas_piRNA, Apisum_piRNA, Tcas_piRNA, Dvir_piRNA, Nves_piRNA), 
             category.names = c("O.fasciatus", "A.pisum", "T.castaneum", "D.virgifera", "N.vespilloides"),
             filename = "E:/oscar/Documents/TFM/7.piRNA_conserved/7.2.M_telotrophic/m.telotrophicdiagram.png",
             main = 'piRNAs in Meroistic telotrophic ovary', main.pos = c(0.5,0.9), 
             margin = 0.3, cat.pos = c(360, 360, 180, 180, 360), main.cex = 2, cat.cex=1.5)

