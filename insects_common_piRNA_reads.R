library(UpSetR)
library(Biostrings)

workingDir <- "E:/oscar/Documents/TFM/9.DE_piRNAs"
setwd(workingDir)
getwd()

common_piRNAS <- read.csv(header = F, file = "E:/oscar/Documents/TFM/8.Ovary_Libraries/common_ovary_piRNA.txt", sep = "," )
common_piRNAS <- data.frame(r1=names(common_piRNAS), t(common_piRNAS))
common_piRNAS <- common_piRNAS[,-1]
common_piRNAS

####################

Bger <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Bger.csv", header = T)

Bger_common <- Bger[Bger$Seqs%in%common_piRNAS,]
nrow(Bger_common)
Bger_common
Bger_reads <- data.frame(row.names = Bger_common$Seqs, Bger_common$Reads)

####################

Lmig <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Lmig.csv", header = T)

Lmig_common <- Lmig[Lmig$Seqs%in%common_piRNAS,]
nrow(Lmig_common)
length(Lmig_common$Seqs)

####################

Ofas <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Ofas.csv", header = T)

Ofas_common <- Ofas[Ofas$Seqs%in%common_piRNAS,]
nrow(Ofas_common)
Ofas_common

####################

Apisum <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Apisum.csv", header = T)

Apisum_common <- Apisum[Apisum$Seqs%in%common_piRNAS,]
nrow(Apisum_common)

####################

Tcas <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Tcas.csv", header = T)

Tcas_common <- Tcas[Tcas$Seqs%in%common_piRNAS,]
nrow(Tcas_common)
Tcas_common

####################

Dvir <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Dvir.csv", header = T)

Dvir_common <- Dvir[Dvir$Seqs%in%common_piRNAS,]
nrow(Dvir_common)

####################

Nves <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Nves.csv", header = T)

Nves_common <- Nves[Nves$Seqs%in%common_piRNAS,]
nrow(Nves_common)
Nves_common

####################

Amell <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Amell.csv", header = T)

Amell_common <- Amell[Amell$Seqs%in%common_piRNAS,]
nrow(Amell_common)
Amell_common

####################

Pxyl <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Pxyl.csv", header = T)

Pxyl_common <- Pxyl[Pxyl$Seqs%in%common_piRNAS,]
nrow(Pxyl_common)
Pxyl_common

####################

Hmel <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Hmel.csv", header = T)

Hmel_common <- Hmel[Hmel$Seqs%in%common_piRNAS,]
nrow(Hmel_common)
Hmel_common

####################

Tni <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Tni.csv", header = T)

Tni_common <- Tni[Tni$Seqs%in%common_piRNAS,]
nrow(Tni_common)
Tni_common

####################

Mdom <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Mdom.csv", header = T)

Mdom_common <- Mdom[Mdom$Seqs%in%common_piRNAS,]
nrow(Mdom_common)

####################

Dmel <- read.csv(file = "E:/oscar/Documents/TFM/6.Collapse_Replicates/6.3.Merge_Reads/Dmel.csv", header = T)

Dmel_common <- Dmel[Dmel$Seqs%in%common_piRNAS,]
nrow(Dmel_common)

###################

piRNA_insects <- read.table(file = 'insects_piRNA.tsv', sep = '\t', header = TRUE)

png('E:/oscar/Documents/TFM/9.DE_piRNAs/UpSetR_Common_Ovarian_piRNA.png')

upset(piRNA_insects, nsets = 9, order.by = "freq", text.scale = 2)

dev.off()
