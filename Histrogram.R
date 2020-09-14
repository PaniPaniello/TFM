library(Biostrings)
library(ggplot2)
options(scipen=10)
memory.limit(20000)

setwd('E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.4.Insect_Libraries_Filtered/5.4.3.Filter_15')

file.names <- dir('E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.4.Insect_Libraries_Filtered/5.4.3.Filter_15', pattern ="fasta")

names <- c('A.aegypti 1', 'A.aegypti 2', 'A.mellifera 1', 'A.mellifera 2', 'A.pisum 1', 'A.pisum 2', 'B.germanica 1', 'B.germanica 2',
           'B.terrestris 1','B.terrestris 2', 'D.melanogaster 1', 'D.virgifera 1', 'D.virgifera 2', 'H.melpomene 1', 'L.migratoria 1',
           'M.domestica 1', 'M.domestica 2', 'N.vespilloides 1', 'O.fasciatus 1', 'O.fasciatus 2', 'P.xylostella 1', 'P.xylostella 2', 
           'T.castaneum 1', 'T.castaneum 2', 'T.ni 1', 'T.ni 2')

for(i in 1:length(file.names)){
  file <- readDNAStringSet(file.names[i])
  file_seqs <- as.data.frame(file)$x
  file_seqs_len <- lapply(file_seqs, FUN = nchar)
  qplot((do.call(rbind,file_seqs_len)), geom="histogram", binwidth = 1, 
        xlab = 'Length (nucleotides)', ylab = 'Reads', fill = I('deepskyblue'), col = I('black')) + labs(title = names[i]) + 
    theme(panel.border = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank(),axis.line = element_line(colour = "black")) + 
    theme_bw() + theme_classic() + theme(axis.text=element_text(size=5), axis.title=element_text(size=5,face="bold"), plot.title = element_text(size=8, face='bold.italic'))
  ggsave(gsub(" ", "", paste(file.names[i], '_hist.png')), width = 6, height = 5, units = 'cm')
  rm(file)
  rm(file_seqs)
  rm(file_seqs_len)
  print('Done!')
}

