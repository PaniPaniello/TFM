library(Biostrings)
library(VennDiagram)
library(data.table)

workingDir <- "E:/oscar/Documents/TFM/8.Ovary_Libraries/"
setwd(workingDir)
getwd()


pano <- readDNAStringSet("Panoistic_piRNA.fasta.collapsed.fa")

pano_piRNA <- as.data.frame(pano)$x

telo <- readDNAStringSet("M_Telotrophic_piRNA.fasta.collapsed.fa")

telo_piRNA <- as.data.frame(telo)$x

poly <- readDNAStringSet("M_polytrophic_piRNA.fasta.collapsed.fa")

poly_piRNA <- as.data.frame(poly)$x

venn.diagram(x=list(pano_piRNA, telo_piRNA, poly_piRNA), 
             category.names = c("Panoistic Ovary", "M.telotrophic Ovary", "M.polytrophic_Ovary"),
             filename = "E:/oscar/Documents/TFM/8.Ovary_Libraries/ovary_conservation.png",
             main = 'piRNAs between ovary pools', margin = 0.12, main.pos = c(0.5,0.95), 
             cat.cex = 1.5, cex = 2, main.cex = 2.5, cat.pos = c(340, 20, 180))


poly_telo <- poly_piRNA[poly_piRNA%in%telo_piRNA]

poly_telo_pano <- poly_telo[poly_telo%in%pano_piRNA]

poly_telo_pano

fwrite(as.list(poly_telo_pano), file = "common_ovary_piRNA.txt")
