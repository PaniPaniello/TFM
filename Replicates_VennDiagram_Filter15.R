library(Biostrings)
library(VennDiagram)

workingDir <- "E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.4.Insect_Libraries_Filtered/5.4.3.Filter_15/"
setwd(workingDir)
getwd()

make.italic <- function(x) as.expression(lapply(x, function(y) bquote(italic(.(y)))))

############## BLATTELLA GERMANICA ################


Bger1 <- readDNAStringSet("Bger1_filt15.fasta")
Bger1_seqs <- as.data.frame(Bger1)$x

Bger2 <- readDNAStringSet("Bger2_filt15.fasta")
Bger2_seqs <- as.data.frame(Bger2)$x

total_seq_Bger1 <- length(Bger1_seqs)
total_seq_Bger2 <- length(Bger2_seqs)

IS_Bger1_Bger2 <- sum(Bger1%in%Bger2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/B.germanica_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Bger1,area2 = total_seq_Bger2,
                   cross.area = IS_Bger1_Bger2, category = make.italic(c("B.germanica_1","B.germanica_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(5, 340), cat.dist = c(-0.41, -0.40))


dev.off()


############## ONCOPELTUS FASCIATUS ################


Ofas1 <- readDNAStringSet("Ofas1_filt15.fasta")
Ofas1_seqs <- as.data.frame(Ofas1)$x

Ofas2 <- readDNAStringSet("Ofas2_filt15.fasta")
Ofas2_seqs <- as.data.frame(Ofas2)$x

total_seq_Ofas1 <- length(Ofas1_seqs)
total_seq_Ofas2 <- length(Ofas2_seqs)

IS_Ofas1_Ofas2 <- sum(Ofas1%in%Ofas2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/O.fasciatus_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Ofas1,area2 = total_seq_Ofas2,
                   cross.area = IS_Ofas1_Ofas2, category = make.italic(c("O.fasciatus_1","O.fasciatus_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.dist = c(-0.42,-0.415), cat.pos = c(15, 340))


dev.off()


############## ACYRTHOSIPHON PISUM ################

Apisum1 <- readDNAStringSet("Apisum1_filt15.fasta")
Apisum1_seqs <- as.data.frame(Apisum1)$x

Apisum2 <- readDNAStringSet("Apisum2_filt15.fasta")
Apisum2_seqs <- as.data.frame(Apisum2)$x

total_seq_Apisum1 <- length(Apisum1_seqs)
total_seq_Apisum2 <- length(Apisum2_seqs)

IS_Apisum1_Apisum2 <- sum(Apisum1%in%Apisum2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/A.pisum_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Apisum1,area2 = total_seq_Apisum2,
                   cross.area = IS_Apisum1_Apisum2, category = make.italic(c("A.pisum_1","A.pisum_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(5, 340), cat.dist = c(-0.41, -0.40))


dev.off()


############## TRIBOLIUM CASTANEUM ################



Tcas1 <- readDNAStringSet("Tcas1_filt15.fasta")
Tcas1_seqs <- as.data.frame(Tcas1)$x

Tcas2 <- readDNAStringSet("Tcas2_filt15.fasta")
Tcas2_seqs <- as.data.frame(Tcas2)$x

total_seq_Tcas1 <- length(Tcas1_seqs)
total_seq_Tcas2 <- length(Tcas2_seqs)

IS_Tcas1_Tcas2 <- sum(Tcas1%in%Tcas2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/T.castaneum_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Tcas1,area2 = total_seq_Tcas2,
                   cross.area = IS_Tcas1_Tcas2, category = make.italic(c("T.castaneum_1","T.castaneum_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(350, 15), cat.dist = c(-0.425, -0.42), inverted = T)


dev.off()

############## DIABROTICA VIRGIFERA ################



Dvir1 <- readDNAStringSet("Dvir1_filt15.fasta")
Dvir1_seqs <- as.data.frame(Dvir1)$x

Dvir2 <- readDNAStringSet("Dvir2_filt15.fasta")
Dvir2_seqs <- as.data.frame(Dvir2)$x

total_seq_Dvir1 <- length(Dvir1_seqs)
total_seq_Dvir2 <- length(Dvir2_seqs)

IS_Dvir1_Dvir2 <- sum(Dvir1%in%Dvir2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/D.virgifera_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Dvir1,area2 = total_seq_Dvir2,
                   cross.area = IS_Dvir1_Dvir2, category = make.italic(c("D.virgifera_1","D.virgifera_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(350, 15), cat.dist = c(-0.425, -0.43), inverted = T)


dev.off()

############## APIS MELLIFERA ################



Amell1 <- readDNAStringSet("Amell1_filt15.fasta")
Amell1_seqs <- as.data.frame(Amell1)$x

Amell2 <- readDNAStringSet("Amell2_filt15.fasta")
Amell2_seqs <- as.data.frame(Amell2)$x

total_seq_Amell1 <- length(Amell1_seqs)
total_seq_Amell2 <- length(Amell2_seqs)

IS_Amell1_Amell2 <- sum(Amell1%in%Amell2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/A.mellifera_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Amell1,area2 = total_seq_Amell2,
                   cross.area = IS_Amell1_Amell2, category = make.italic(c("A.mellifera_1","A.mellifera_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(320, 25), cat.dist = c(-0.425, -0.465), inverted = T)


dev.off()

############## BOMBUS TERRESTRIS ################



Bterr1 <- readDNAStringSet("Bterr1_filt15.fasta")
Bterr1_seqs <- as.data.frame(Bterr1)$x

Bterr2 <- readDNAStringSet("Bterr2_filt15.fasta")
Bterr2_seqs <- as.data.frame(Bterr2)$x

total_seq_Bterr1 <- length(Bterr1_seqs)
total_seq_Bterr2 <- length(Bterr2_seqs)

IS_Bterr1_Bterr2 <- sum(Bterr1%in%Bterr2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/B.terrestris_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Bterr1,area2 = total_seq_Bterr2,
                   cross.area = IS_Bterr1_Bterr2, category = make.italic(c("B.terrestris_1","B.terrestris_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(5, 360), cat.dist = c(-0.415, -0.325))


dev.off()

############## PLUTELLA XYLOSTELLA ################



Pxyl1 <- readDNAStringSet("Pxyl1_filt15.fasta")
Pxyl1_seqs <- as.data.frame(Pxyl1)$x

Pxyl2 <- readDNAStringSet("Pxyl2_filt15.fasta")
Pxyl2_seqs <- as.data.frame(Pxyl2)$x

total_seq_Pxyl1 <- length(Pxyl1_seqs)
total_seq_Pxyl2 <- length(Pxyl2_seqs)

IS_Pxyl1_Pxyl2 <- sum(Pxyl1%in%Pxyl2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/P.xylostella_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Pxyl1,area2 = total_seq_Pxyl2,
                   cross.area = IS_Pxyl1_Pxyl2, category = make.italic(c("P.xylostella_1","P.xylostella_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(10, 345), cat.dist = c(-0.415, -0.41))


dev.off()


############## TRICHOPLUSIA NI ################



Tni1 <- readDNAStringSet("Tni1_filt15.fasta")
Tni1_seqs <- as.data.frame(Tni1)$x

Tni2 <- readDNAStringSet("Tni2_filt15.fasta")
Tni2_seqs <- as.data.frame(Tni2)$x

total_seq_Tni1 <- length(Tni1_seqs)
total_seq_Tni2 <- length(Tni2_seqs)

IS_Tni1_Tni2 <- sum(Tni1%in%Tni2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/T.ni_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Tni1,area2 = total_seq_Tni2,
                   cross.area = IS_Tni1_Tni2, category = make.italic(c("T.ni_1","T.ni_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(5, 345), cat.dist = c(-0.415, -0.385))


dev.off()


############## AEDES AEGYPTI ################


Aaeg1 <- readDNAStringSet("Aaeg1_filt15.fasta")
Aaeg1_seqs <- as.data.frame(Aaeg1)$x

Aaeg2 <- readDNAStringSet("Aaeg2_filt15.fasta")
Aaeg2_seqs <- as.data.frame(Aaeg2)$x

total_seq_Aaeg1 <- length(Aaeg1_seqs)
total_seq_Aaeg2 <- length(Aaeg2_seqs)

IS_Aaeg1_Aaeg2 <- sum(Aaeg1%in%Aaeg2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/A.aegypti_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Aaeg1,area2 = total_seq_Aaeg2,
                   cross.area = IS_Aaeg1_Aaeg2, category = make.italic(c("A.aegypti_1","A.aegypti_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(360, 360), cat.dist = c(-0.415, -0.2), ext.dist = c(-0.05, 0.025) )


dev.off()

############## MUSCA DOMESTICA ################


Mdom1 <- readDNAStringSet("Mdom1_filt15.fasta")
Mdom1_seqs <- as.data.frame(Mdom1)$x

Mdom2 <- readDNAStringSet("Mdom2_filt15.fasta")
Mdom2_seqs <- as.data.frame(Mdom2)$x

total_seq_Mdom1 <- length(Mdom1_seqs)
total_seq_Mdom2 <- length(Mdom2_seqs)

IS_Mdom1_Mdom2 <- sum(Mdom1%in%Mdom2)


png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.3.Replicates_Filter/5.3.3.Filter_15/M.domestica_filtered_replicates_filt_15.png",width = 1500,height = 1500,res = 150)

draw.pairwise.venn(area1 = total_seq_Mdom1,area2 = total_seq_Mdom2,
                   cross.area = IS_Mdom1_Mdom2, category = make.italic(c("M.domestica_1","M.domestica_2")),
                   print.mode = c('raw', 'percent'), cex = 2.5, fill  = c("skyblue","mediumorchid"), cat.cex = 2.5, cat.pos = c(350, 15), cat.dist = c(-0.440, -0.46), inverted = T)


dev.off()
