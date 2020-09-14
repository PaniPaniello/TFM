library(Biostrings)
library(ggplot2)


workingDir <- "E:/oscar/Documents/TFM/4.2.Fasta_Collapsed"
setwd(workingDir)
getwd()

options(scipen=10)
############## BLATTELLA GERMANICA ################


Bger1 <- readDNAStringSet("OvD7_1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Bger1_reads <- as.numeric(names(Bger1))
Bger1_seqs <- as.numeric(width(Bger1))
Bger1_df <- data.frame(Bger1_reads, Bger1_seqs)

filt <- Bger1_df$Bger1_reads<20
Bger1_20 <- Bger1_df$Bger1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/B.germanica_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Bger1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: B.germanica_1")
dev.off()


Bger2 <- readDNAStringSet("OvD7_2_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Bger2_reads <- as.numeric(names(Bger2))
Bger2_seqs <- as.numeric(width(Bger2))
Bger2_df <- data.frame(Bger2_reads, Bger2_seqs)

filt <- Bger2_df$Bger2_reads<20
Bger2_20 <- Bger2_df$Bger2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/B.germanica_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Bger2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: B.germanica_2")
dev.off()


############## LOCUSTA MIGRATORIA ################


Lmig <- readDNAStringSet("SRR5605149.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Lmig_reads <- as.numeric(names(Lmig))
Lmig_seqs <- as.numeric(width(Lmig))
Lmig_df <- data.frame(Lmig_reads, Lmig_seqs)

filt <- Lmig_df$Lmig_reads<20
Lmig_20 <- Lmig_df$Lmig_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/L.migratoria_seqxreads.png",width = 1500,height = 1500,res = 150)
hist(Lmig_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: L.migratoria_1")
dev.off()


############## ONCOPELTUS FASCIATUS ################


Ofas1 <- readDNAStringSet("SRR5614359.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Ofas1_reads <- as.numeric(names(Ofas1))
Ofas1_seqs <- as.numeric(width(Ofas1))
Ofas1_df <- data.frame(Ofas1_reads, Ofas1_seqs)

filt <- Ofas1_df$Ofas1_reads<20
Ofas1_20 <- Ofas1_df$Ofas1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/O.fasciatus_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Ofas1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: O.fasciatus_1")
dev.off()


Ofas2 <- readDNAStringSet("SRR5614361.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Ofas2_reads <- as.numeric(names(Ofas2))
Ofas2_seqs <- as.numeric(width(Ofas2))
Ofas2_df <- data.frame(Ofas2_reads, Ofas2_seqs)

filt <- Ofas2_df$Ofas2_reads<20
Ofas2_20 <- Ofas2_df$Ofas2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/O.fasciatus_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Ofas2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: O.fasciatus_2")
dev.off()


############## ACYRTHOSIPHON PISUM ################


Apisum1 <- readDNAStringSet("SRR5614367.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Apisum1_reads <- as.numeric(names(Apisum1))
Apisum1_seqs <- as.numeric(width(Apisum1))
Apisum1_df <- data.frame(Apisum1_reads, Apisum1_seqs)

filt <- Apisum1_df$Apisum1_reads<20
Apisum1_20 <- Apisum1_df$Apisum1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/A.pisum_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Apisum1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: A.pisum_1")
dev.off()


Apisum2 <- readDNAStringSet("SRR5614369.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Apisum2_reads <- as.numeric(names(Apisum2))
Apisum2_seqs <- as.numeric(width(Apisum2))
Apisum2_df <- data.frame(Apisum2_reads, Apisum2_seqs)

filt <- Apisum2_df$Apisum2_reads<20
Apisum2_20 <- Apisum2_df$Apisum2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/A.psium_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Apisum2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: A.pisum_2")
dev.off()


############## TRIBOLIUM CASTANEUM ################


Tcas1 <- readDNAStringSet("SRR5615775.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Tcas1_reads <- as.numeric(names(Tcas1))
Tcas1_seqs <- as.numeric(width(Tcas1))
Tcas1_df <- data.frame(Tcas1_reads, Tcas1_seqs)

filt <- Tcas1_df$Tcas1_reads<20
Tcas1_20 <- Tcas1_df$Tcas1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/T.castaneum_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Tcas1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: T.castaneum_1")
dev.off()


Tcas2 <- readDNAStringSet("SRR5615777.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Tcas2_reads <- as.numeric(names(Tcas2))
Tcas2_seqs <- as.numeric(width(Tcas2))
Tcas2_df <- data.frame(Tcas2_reads, Tcas2_seqs)

filt <- Tcas2_df$Tcas2_reads<20
Tcas2_20 <- Tcas2_df$Tcas2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/T.castaneum_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Tcas2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: T.castaneum_2")
dev.off()


############## DIABROTICA VIRGIFERA ################


Dvir1 <- readDNAStringSet("SRR5616338.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Dvir1_reads <- as.numeric(names(Dvir1))
Dvir1_seqs <- as.numeric(width(Dvir1))
Dvir1_df <- data.frame(Dvir1_reads, Dvir1_seqs)

filt <- Dvir1_df$Dvir1_reads<20
Dvir1_20 <- Dvir1_df$Dvir1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/D.virgifera_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Dvir1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: D.virgifera_1")
dev.off()


Dvir2 <- readDNAStringSet("SRR5616340.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Dvir2_reads <- as.numeric(names(Dvir2))
Dvir2_seqs <- as.numeric(width(Dvir2))
Dvir2_df <- data.frame(Dvir2_reads, Dvir2_seqs)

filt <- Dvir2_df$Dvir2_reads<20
Dvir2_20 <- Dvir2_df$Dvir2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/D.virgifera_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Dvir2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: D.virgifera_2")
dev.off()


############## NICROPHORUS VESPILLOIDES ################


Nves <- readDNAStringSet("SRR5615769.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Nves_reads <- as.numeric(names(Nves))
Nves_seqs <- as.numeric(width(Nves))
Nves_df <- data.frame(Nves_reads, Nves_seqs)

filt <- Nves_df$Nves_reads<20
Nves_20 <- Nves_df$Nves_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/N.vespilloides_seqxreads.png",width = 1500,height = 1500,res = 150)
hist(Nves_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: N.vespilloides_1")
dev.off()


############## APIS MELLIFERA ################


Amell1 <- readDNAStringSet("SRR5615346.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Amell1_reads <- as.numeric(names(Amell1))
Amell1_seqs <- as.numeric(width(Amell1))
Amell1_df <- data.frame(Amell1_reads, Amell1_seqs)

filt <- Amell1_df$Amell1_reads<20
Amell1_20 <- Amell1_df$Amell1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/A.mellifera_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Amell1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: A.mellifera_1")
dev.off()


Amell2 <- readDNAStringSet("SRR5615350.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Amell2_reads <- as.numeric(names(Amell2))
Amell2_seqs <- as.numeric(width(Amell2))
Amell2_df <- data.frame(Amell2_reads, Amell2_seqs)

filt <- Amell2_df$Amell2_reads<20
Amell2_20 <- Amell2_df$Amell2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/A.mellifera_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Amell2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: A.mellifera_2")
dev.off()


############## BOMBUS TERRESTRIS ################


Bterr1 <- readDNAStringSet("SRR5614874.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Bterr1_reads <- as.numeric(names(Bterr1))
Bterr1_seqs <- as.numeric(width(Bterr1))
Bterr1_df <- data.frame(Bterr1_reads, Bterr1_seqs)

filt <- Bterr1_df$Bterr1_reads<20
Bterr1_20 <- Bterr1_df$Bterr1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/B.terrestris_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Bterr1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: B.terrestris_1")
dev.off()


Bterr2 <- readDNAStringSet("SRR5614877.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Bterr2_reads <- as.numeric(names(Bterr2))
Bterr2_seqs <- as.numeric(width(Bterr2))
Bterr2_df <- data.frame(Bterr2_reads, Bterr2_seqs)

filt <- Bterr2_df$Bterr2_reads<20
Bterr2_20 <- Bterr2_df$Bterr2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/B.terrestris_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Bterr2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: B.terrestris_2")
dev.off()


############## PLUTELLA XYLOSTELLA ################


Pxyl1 <- readDNAStringSet("SRR5616371.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Pxyl1_reads <- as.numeric(names(Pxyl1))
Pxyl1_seqs <- as.numeric(width(Pxyl1))
Pxyl1_df <- data.frame(Pxyl1_reads, Pxyl1_seqs)

filt <- Pxyl1_df$Pxyl1_reads<20
Pxyl1_20 <- Pxyl1_df$Pxyl1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/P.xylostella_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Pxyl1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: P.xylostella_1")
dev.off()


Pxyl2 <- readDNAStringSet("SRR5616373.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Pxyl2_reads <- as.numeric(names(Pxyl2))
Pxyl2_seqs <- as.numeric(width(Pxyl2))
Pxyl2_df <- data.frame(Pxyl2_reads, Pxyl2_seqs)

filt <- Pxyl2_df$Pxyl2_reads<20
Pxyl2_20 <- Pxyl2_df$Pxyl2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/P.xylostella_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Pxyl2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: P.xylostella_2")
dev.off()


############## HELICONIUS MELPOMENE ################


Hmel <- readDNAStringSet("SRR5616879.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Hmel_reads <- as.numeric(names(Hmel))
Hmel_seqs <- as.numeric(width(Hmel))
Hmel_df <- data.frame(Hmel_reads, Hmel_seqs)

filt <- Hmel_df$Hmel_reads<20
Hmel_20 <- Hmel_df$Hmel_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/H.melpomene_seqxreads.png",width = 1500,height = 1500,res = 150)
hist(Hmel_20,  xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: H.melpomene_1")
dev.off()


############## TRICHOPLUSIA NI ################


Tni1 <- readDNAStringSet("SRR5618755.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Tni1_reads <- as.numeric(names(Tni1))
Tni1_seqs <- as.numeric(width(Tni1))
Tni1_df <- data.frame(Tni1_reads, Tni1_seqs)

filt <- Tni1_df$Tni1_reads<20
Tni1_20 <- Tni1_df$Tni1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/T.ni_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Tni1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: T.ni_1")
dev.off()


Tni2 <- readDNAStringSet("SRR5618759.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Tni2_reads <- as.numeric(names(Tni2))
Tni2_seqs <- as.numeric(width(Tni2))
Tni2_df <- data.frame(Tni2_reads, Tni2_seqs)

filt <- Tni2_df$Tni2_reads<20
Tni2_20 <- Tni2_df$Tni2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/T.ni_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Tni2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: T.ni_2")
dev.off()


############## AEDES AEGYPTI ################


Aaeg1 <- readDNAStringSet("SRR5961504.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Aaeg1_reads <- as.numeric(names(Aaeg1))
Aaeg1_seqs <- as.numeric(width(Aaeg1))
Aaeg1_df <- data.frame(Aaeg1_reads, Aaeg1_seqs)

filt <- Aaeg1_df$Aaeg1_reads<20
Aaeg1_20 <- Aaeg1_df$Aaeg1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/A.aegypti_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Aaeg1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: A.aegypti_1")
dev.off()


Aaeg2 <- readDNAStringSet("SRR5961506.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Aaeg2_reads <- as.numeric(names(Aaeg2))
Aaeg2_seqs <- as.numeric(width(Aaeg2))
Aaeg2_df <- data.frame(Aaeg2_reads, Aaeg2_seqs)

filt <- Aaeg2_df$Aaeg2_reads<20
Aaeg2_20 <- Aaeg2_df$Aaeg2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/A.aegypti_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Aaeg2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: A.aegypti_2")
dev.off()


############## MUSCA DOMESTICA ################


Mdom1 <- readDNAStringSet("SRR5961489.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Mdom1_reads <- as.numeric(names(Mdom1))
Mdom1_seqs <- as.numeric(width(Mdom1))
Mdom1_df <- data.frame(Mdom1_reads, Mdom1_seqs)

filt <- Mdom1_df$Mdom1_reads<20
Mdom1_20 <- Mdom1_df$Mdom1_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/M.domestica_seqxreads1.png",width = 1500,height = 1500,res = 150)
hist(Mdom1_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: M.domestica_1")
dev.off()


Mdom2 <- readDNAStringSet("SRR5961490.1_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Mdom2_reads <- as.numeric(names(Mdom2))
Mdom2_seqs <- as.numeric(width(Mdom2))
Mdom2_df <- data.frame(Mdom2_reads, Mdom2_seqs)

filt <- Mdom2_df$Mdom2_reads<20
Mdom2_20 <- Mdom2_df$Mdom2_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/M.domestica_seqxreads2.png",width = 1500,height = 1500,res = 150)
hist(Mdom2_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: M.domestica_2")
dev.off()


############## DROSOPHILA MELANOGASTER ################


Dmel <- readDNAStringSet("SRR5593238.2_trimmed.fq.27-30.fq.no-dust.fasta.collapsed.fa")

Dmel_reads <- as.numeric(names(Dmel))
Dmel_seqs <- as.numeric(width(Dmel))
Dmel_df <- data.frame(Dmel_reads, Dmel_seqs)

filt <- Dmel_df$Dmel_reads<20
Dmel_20 <- Dmel_df$Dmel_reads[filt]

png("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.1.Replicates_Prefilter/5.1.2.Seqxreads/D.melanogaster_seqxreads.png",width = 1500,height = 1500,res = 150)
hist(Dmel_20, xlab = "nºreads", ylab = "nºseqs", col = "cyan" , main = "NumSeqs x NumReads: D.melanogaster_1")
dev.off()



