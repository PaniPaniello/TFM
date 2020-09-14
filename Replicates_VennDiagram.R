
library(Biostrings)
library(VennDiagram)

workingDir <- "E:/oscar/Documents/TFM/4.2.Fasta_Collapsed"
setwd(workingDir)
getwd()

make.italic <- function(x) as.expression(lapply(x, function(y) bquote(italic(.(y)))))

############## BLATTELLA GERMANICA ################


Bger1 <- readDNAStringSet("OvD7_1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Bger1_seqs <- as.data.frame(Bger1)$x

Bger2 <- readDNAStringSet("OvD7_2_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Bger2_seqs <- as.data.frame(Bger2)$x

total_seq_Bger1 <- length(Bger1_seqs)
total_seq_Bger2 <- length(Bger2_seqs)

IS_Bger1_Bger2 <- sum(Bger1%in%Bger2)

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/B.germanica_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Bger1,area2 = total_seq_Bger2,
              cross.area = IS_Bger1_Bger2, category = make.italic(c("B.germanica_1","B.germanica_2")),
               print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.dist = c(-0.42,-0.4), cat.pos = c(15, 350))


dev.off()


############## ONCOPELTUS FASCIATUS ################


Ofas1 <- readDNAStringSet("SRR5614359.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Ofas1_seqs <- as.data.frame(Ofas1)$x

Ofas2 <- readDNAStringSet("SRR5614361.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Ofas2_seqs <- as.data.frame(Ofas2)$x

total_seq_Ofas1 <- length(Ofas1_seqs)
total_seq_Ofas2 <- length(Ofas2_seqs)

IS_Ofas1_Ofas2 <- sum(Ofas1%in%Ofas2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/O.fasciatus_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Ofas1,area2 = total_seq_Ofas2,
                   cross.area = IS_Ofas1_Ofas2, category = make.italic(c("O.fasciatus_1","O.fasciatus_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.dist = c(-0.42,-0.4), cat.pos = c(15, 350))


dev.off()



############## ACYRTHOSIPHON PISUM ################


Apisum1 <- readDNAStringSet("SRR5614367.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Apisum1_seqs <- as.data.frame(Apisum1)$x

Apisum2 <- readDNAStringSet("SRR5614369.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Apisum2_seqs <- as.data.frame(Apisum2)$x

total_seq_Apisum1 <- length(Apisum1_seqs)
total_seq_Apisum2 <- length(Apisum2_seqs)

IS_Apisum1_Apisum2 <- sum(Apisum1%in%Apisum2)

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/A.pisum_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Apisum1,area2 = total_seq_Apisum2,
                   cross.area = IS_Apisum1_Apisum2, category = make.italic(c("A.pisum_1","A.pisum_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(350, 15), cat.dist = c(-0.425, -0.43), inverted = T)


dev.off()


############## TRIBOLIUM CASTANEUM ################


Tcas1 <- readDNAStringSet("SRR5615775.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Tcas1_seqs <- as.data.frame(Tcas1)$x

Tcas2 <- readDNAStringSet("SRR5615777.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Tcas2_seqs <- as.data.frame(Tcas2)$x

total_seq_Tcas1 <- length(Tcas1_seqs)
total_seq_Tcas2 <- length(Tcas2_seqs)

IS_Tcas1_Tcas2 <- sum(Tcas1%in%Tcas2)

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/T.castaneum_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Tcas1,area2 = total_seq_Tcas2,
                   cross.area = IS_Tcas1_Tcas2, category = make.italic(c("T.castaneum_1","T.castaneum_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(350, 15), cat.dist = c(-0.425, -0.42), inverted = T)


dev.off()


############## DIABROTICA VIRGIFERA ################


Dvir1 <- readDNAStringSet("SRR5616338.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Dvir1_seqs <- as.data.frame(Dvir1)$x

Dvir2 <- readDNAStringSet("SRR5616340.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Dvir2_seqs <- as.data.frame(Dvir2)$x

total_seq_Dvir1 <- length(Dvir1_seqs)
total_seq_Dvir2 <- length(Dvir2_seqs)

IS_Dvir1_Dvir2 <- sum(Dvir1%in%Dvir2)

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/D.virgifera_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Dvir1,area2 = total_seq_Dvir2,
                   cross.area = IS_Dvir1_Dvir2, category = make.italic(c("D.virgifera_1","D.virgifera_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(350, 15), cat.dist = c(-0.425, -0.43), inverted = T)


dev.off()


############## APIS MELLIFERA ################


Amell1 <- readDNAStringSet("SRR5615346.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Amell1_seqs <- as.data.frame(Amell1)$x

Amell2 <- readDNAStringSet("SRR5615350.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Amell2_seqs <- as.data.frame(Amell2)$x

total_seq_Amell1 <- length(Amell1_seqs)
total_seq_Amell2 <- length(Amell2_seqs)

IS_Amell1_Amell2 <- sum(Amell1%in%Amell2)

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/A.mellifera_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Amell1,area2 = total_seq_Amell2,
                   cross.area = IS_Amell1_Amell2, category = make.italic(c("A.mellifera_1","A.mellifera_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.dist = c(-0.43,-0.42), cat.pos = c(20,340))


dev.off()


############## BOMBUS TERRESTRIS ################


Bterr1 <- readDNAStringSet("SRR5614874.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Bterr1_seqs <- as.data.frame(Bterr1)$x

Bterr2 <- readDNAStringSet("SRR5614877.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Bterr2_seqs <- as.data.frame(Bterr2)$x

total_seq_Bterr1 <- length(Bterr1_seqs)
total_seq_Bterr2 <- length(Bterr2_seqs)

IS_Bterr1_Bterr2 <- sum(Bterr1%in%Bterr2)

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/B.terrestris_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Bterr1,area2 = total_seq_Bterr2,
                   cross.area = IS_Bterr1_Bterr2, category = make.italic(c("B.terrestris_1","B.terrestris_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.dist = c(-0.42, -0.2), cat.pos = 6, ext.dist = c(-0.05, 0.025))


dev.off()


############## PLUTELLA XYLOSTELLA ################


Pxyl1 <- readDNAStringSet("SRR5616371.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Pxyl1_seqs <- as.data.frame(Pxyl1)$x

Pxyl2 <- readDNAStringSet("SRR5616373.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Pxyl2_seqs <- as.data.frame(Pxyl2)$x

total_seq_Pxyl1 <- length(Pxyl1_seqs)
total_seq_Pxyl2 <- length(Pxyl2_seqs)

IS_Pxyl1_Pxyl2 <- sum(Pxyl1%in%Pxyl2)

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/P.xylostella_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Pxyl1,area2 = total_seq_Pxyl2,
                   cross.area = IS_Pxyl1_Pxyl2, category = make.italic(c("P.xylostella_1","P.xylostella_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.dist = c(-0.41, -0.4), cat.pos = 4)


dev.off()


############## TRICHOPLUSIA NI ################


Tni1 <- readDNAStringSet("SRR5618755.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Tni1_seqs <- as.data.frame(Tni1)$x

Tni2 <- readDNAStringSet("SRR5618759.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Tni2_seqs <- as.data.frame(Tni2)$x

total_seq_Tni1 <- length(Tni1_seqs)
total_seq_Tni2 <- length(Tni2_seqs)

IS_Tni1_Tni2 <- sum(Tni1%in%Tni2)

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/T.ni_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Tni1,area2 = total_seq_Tni2,
                   cross.area = IS_Tni1_Tni2, category = make.italic(c("T.ni_1","T.ni_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.dist = c(-0.42,-0.4), cat.pos = c(15, 350))


dev.off()


############## AEDES AEGYPTI ################


Aaeg1 <- readDNAStringSet("SRR5961504.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Aaeg1_seqs <- as.data.frame(Aaeg1)$x

Aaeg2 <- readDNAStringSet("SRR5961506.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Aaeg2_seqs <- as.data.frame(Aaeg2)$x

total_seq_Aaeg1 <- length(Aaeg1_seqs)
total_seq_Aaeg2 <- length(Aaeg2_seqs)

IS_Aaeg1_Aaeg2 <- sum(Aaeg1%in%Aaeg2)

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/A.aegypti_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Aaeg1,area2 = total_seq_Aaeg2,
                   cross.area = IS_Aaeg1_Aaeg2, category = make.italic(c("A.aegypti_1","A.aegypti_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.dist = c(-0.42, -0.2), cat.pos = 6, ext.dist = c(-0.05, 0.025))


dev.off()


############## MUSCA DOMESTICA ################


Mdom1 <- readDNAStringSet("SRR5961489.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Mdom1_seqs <- as.data.frame(Mdom1)$x

Mdom2 <- readDNAStringSet("SRR5961490.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")
Mdom2_seqs <- as.data.frame(Mdom2)$x

total_seq_Mdom1 <- length(Mdom1_seqs)
total_seq_Mdom2 <- length(Mdom2_seqs)

IS_Mdom1_Mdom2 <- sum(Mdom1%in%Mdom2)

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.1.VennDiagram/M.domestica_replicates.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Mdom1,area2 = total_seq_Mdom2,
                   cross.area = IS_Mdom1_Mdom2, category = make.italic(c("M.domestica_1","M.domestica_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(350, 15), cat.dist = c(-0.440, -0.455), inverted = T)


dev.off()

