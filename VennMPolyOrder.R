library(Biostrings)
library(VennDiagram)
library(venn)

workingDir <- "E:/oscar/Documents/TFM/7.piRNA_conserved/7.1.M_polytrophic"
setwd(workingDir)
getwd()


hyme <- readDNAStringSet("Hymenopter_piRNA.fasta.collapsed.fa")

hyme_piRNA <- as.data.frame(hyme)$x

lepi <- readDNAStringSet("Lepidopter_piRNA.fasta.collapsed.fa")

lepi_piRNA <- as.data.frame(lepi)$x

dipt <- readDNAStringSet("Dipter_piRNA.fasta.collapsed.fa")

dipt_piRNA <- as.data.frame(dipt)$x

venn.diagram(x=list(hyme_piRNA, lepi_piRNA, dipt_piRNA), 
             category.names = c("Hymenoptera", "Lepidoptera", "Diptera"),
             filename = "order_piRNA_mpoly.png",
             main = 'Common piRNAs between Orders with M.polytrophic ovary', margin = 0.1, main.pos = c(0.5,0.95))


hyme_lepi <- hyme_piRNA[hyme_piRNA%in%lepi_piRNA]

hyme_lepi_dipt <- hyme_lepi[hyme_lepi%in%dipt_piRNA]

hyme_lepi_dipt

fwrite(as.list(hyme_lepi_dipt), file = "common_mpoly_order_piRNA.txt")

common_piRNAS <- read.csv(header = F, file = "common_mpoly_order_piRNA.txt", sep = "," )
common_piRNAS <- data.frame(r1=names(common_piRNAS), t(common_piRNAS))
common_piRNAS <- common_piRNAS[,-1]
common_piRNAS

####################

Amell <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Amell.csv", header = T)

Amell_common <- Amell[Amell$Seqs%in%common_piRNAS,]
nrow(Amell_common)
Amell_common$specie <- rep('Amell', length(Amell_common$X))

####################

Pxyl <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Pxyl.csv", header = T)

Pxyl_common <- Pxyl[Pxyl$Seqs%in%common_piRNAS,]
nrow(Pxyl_common)
Pxyl_common
Pxyl_common$specie <- rep('Pxyl', length(Pxyl_common$X))

####################

Hmel <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Hmel.csv", header = T)

Hmel_common <- Hmel[Hmel$Seqs%in%common_piRNAS,]
nrow(Hmel_common)
Hmel_common
Hmel_common$specie <- rep('Hmel', length(Hmel_common$X))

####################

Tni <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Tni.csv", header = T)

Tni_common <- Tni[Tni$Seqs%in%common_piRNAS,]
nrow(Tni_common)
Tni_common
Tni_common$specie <- rep('Tni', length(Tni_common$X))

####################

Mdom <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Mdom.csv", header = T)

Mdom_common <- Mdom[Mdom$Seqs%in%common_piRNAS,]
nrow(Mdom_common)
Mdom_common$specie <- rep('Mdom', length(Mdom_common$X))

####################

Dmel <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Dmel.csv", header = T)

Dmel_common <- Dmel[Dmel$Seqs%in%common_piRNAS,]
nrow(Dmel_common)
Dmel_common$specie <- rep('Dmel', length(Dmel_common$X))

###################

general_mpoly <- do.call("rbind", list(Amell_common,Pxyl_common, Hmel_common, Tni_common, Mdom_common, Dmel_common))
general_mpoly <- general_mpoly[, c(-1,-3)]
general_mpoly

library(reshape2)
library(UpSetR)

pres_abs_mpoly <- dcast(general_mpoly, Seqs~specie, length)

png('UpSetR_Common_Mpoly_piRNA.png', units = 'cm', height = 5, width = 7)

upset(pres_abs_mpoly, nsets = 6, order.by = "freq", text.scale = 2)

dev.off()