library(Biostrings)
library(ggplot2)
options(scipen=10)

workingDir <- "E:/oscar/Documents/TFM/4.2.Fasta_Collapsed"


file.names <- dir("E:/oscar/Documents/TFM/4.2.Fasta_Collapsed", pattern ="fasta")

names <- c('B.germanica 1', 'B.germanica 2', 'D.melanogaster 1', 'L.migratoria 1', 'O.fasciatus 1', 'O.fasciatus 2', 'A.pisum 1', 'A.pisum 2', 'B.terrestris 1',
           'B.terrestris 2', 'A.mellifera 1', 'A.mellifera 2', 'N.vespilloides 1', 'T.castaneum 1', 'T.castaneum 2', 'D.virgifera 1', 'D.virgifera 2', 'P.xylostella 1',
           'P.xylostella 2', 'H.melpomene 1', 'T.ni 1', 'T.ni 2', 'M.domestica 1', 'M.domestica 2', 'A.aegypti 1', 'A.aegypti 2')


for(i in 1:length(file.names)){
  file <- readDNAStringSet(file.names[i])
  file <- file[as.numeric(names(file))>15]
  reads <- as.numeric(names(file))
  seqs <- as.numeric(width(file))
  file_df <- data.frame(reads, seqs)
  filt <- file_df$reads<100
  file20 <- file_df$reads[filt]
  qplot(file20, geom="histogram", binwidth = 1, 
        xlab = 'Reads', ylab = 'Sequences', fill = I('deepskyblue'), col = I('black')) + labs(title = names[i]) + 
    theme(panel.border = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank(),axis.line = element_line(colour = "black")) + 
    theme_bw() + theme_classic() + theme(axis.text=element_text(size=6), axis.title=element_text(size=7,face="bold"), plot.title = element_text(size=9, face='bold.italic'))
  ggsave(gsub(" ", "", paste(names[i], '_seqsxread_hist.png')), width = 6, height = 5, units = 'cm',
         path = "E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.2.Filter/5.2.3.Filter_15")
  rm(file)
  rm(reads)
  rm(seqs)
  rm(file_df)
  rm(filt)
  rm(file20)
  print('Done!')
}