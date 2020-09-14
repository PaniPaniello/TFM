library(Biostrings)
library(VennDiagram)


workingDir <- "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.2.Collapsed_Merged_Libraries/"
setwd(workingDir)
getwd()

make.italic <- function(x) as.expression(lapply(x, function(y) bquote(italic(.(y)))))

Bger <- readDNAStringSet("Blattella_germanica.fasta.collapsed.fa")
Bger_piRNA <- as.data.frame(Bger)$x

Lmig <- readDNAStringSet("Locusta_migratoria.fasta.collapsed.fa")
Lmig_piRNA <- as.data.frame(Lmig)$x


venn.diagram(x=list(Lmig_piRNA, Bger_piRNA), 
             category.names = make.italic(c("L.migratoria", "B.germanica")),
             filename = "E:/oscar/Documents/TFM/7.piRNA_conserved/7.3.Panoistic/panoisticdiagram.png",
             main = 'piRNAs in Panoistic Ovary', main.pos = c(0.5,0.9),
             print.mode = c('raw', 'percent'), cat.pos = 360, ext.dist = -0.5, ext.length = 0.8, cat.cex = 2.5, cex = 2.5, main.cex = 3)

common_panoistic <- Bger_piRNA[Bger_piRNA%in%Lmig_piRNA]
write.csv(common_panoistic, file = 'common_panoistic.csv')
t <- read.csv(file = 'common_panoistic.csv')
seq = t$x
names(seq) = t$X
dna = DNAStringSet(seq)
writeXStringSet(dna, "common_panoistic.fasta", append = F, format = 'fasta')
