library(Biostrings)

workingDir <- "E:/oscar/Documents/TFM/4.2.Fasta_Collapsed"


file.names <- dir('E:/oscar/Documents/TFM/4.2.Fasta_Collapsed', pattern ="fasta")

names <- c('B.germanica 1', 'B.germanica 2', 'D.melanogaster 1', 'L.migratoria 1', 'O.fasciatus 1', 'O.fasciatus 2', 'A.pisum 1', 'A.pisum 2', 'B.terrestris 1',
           'B.terrestris 2', 'A.mellifera 1', 'A.mellifera 2', 'N.vespilloides 1', 'T.castaneum 1', 'T.castaneum 2', 'D.virgifera 1', 'D.virgifera 2', 'P.xylostella 1',
           'P.xylostella 2', 'H.melpomene 1', 'T.ni 1', 'T.ni 2', 'M.domestica 1', 'M.domestica 2', 'A.aegypti 1', 'A.aegypti 2')

seqs <- c()
for(i in 1:length(file.names)){
  file <- readDNAStringSet(file.names[i])
  file_seqs <- as.data.frame(file)$x
  len <- length(file_seqs)
  seqs <- append(seqs, len)
  rm(file)
  rm(file_seqs)
  rm(len)
  print('Done!')
}

table <- as.data.frame(seqs)

row.names(table) <- names

#############################################

setwd("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.4.Insect_Libraries_Filtered/5.4.1.Filter_2/")

file.names2 <- dir("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.4.Insect_Libraries_Filtered/5.4.1.Filter_2/", pattern = 'fasta')

names2 <- c('A.aegypti 1', 'A.aegypti 2', 'A.mellifera 1', 'A.mellifera 2', 'A.pisum 1', 'A.pisum 2', 'B.germanica 1', 'B.germanica 2',
           'B.terrestris 1','B.terrestris 2', 'D.melanogaster 1', 'D.virgifera 1', 'D.virgifera 2', 'H.melpomene 1', 'L.migratoria 1',
           'M.domestica 1', 'M.domestica 2', 'N.vespilloides 1', 'O.fasciatus 1', 'O.fasciatus 2', 'P.xylostella 1', 'P.xylostella 2', 
           'T.castaneum 1', 'T.castaneum 2', 'T.ni 1', 'T.ni 2')

seqs2 <- c()
for(i in 1:length(file.names2)){
  file <- readDNAStringSet(file.names2[i])
  file_seqs <- as.data.frame(file)$x
  len <- length(file_seqs)
  seqs2 <- append(seqs2, len)
  rm(file)
  rm(file_seqs)
  rm(len)
  print('Done!')
}

table2 <- as.data.frame(seqs2)
row.names(table2) <- names2

#############################################

setwd("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.4.Insect_Libraries_Filtered/5.4.2.Filter_10/")

file.names3 <- dir("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.4.Insect_Libraries_Filtered/5.4.2.Filter_10/", pattern = 'fasta')

names2 <- c('A.aegypti 1', 'A.aegypti 2', 'A.mellifera 1', 'A.mellifera 2', 'A.pisum 1', 'A.pisum 2', 'B.germanica 1', 'B.germanica 2',
            'B.terrestris 1','B.terrestris 2', 'D.melanogaster 1', 'D.virgifera 1', 'D.virgifera 2', 'H.melpomene 1', 'L.migratoria 1',
            'M.domestica 1', 'M.domestica 2', 'N.vespilloides 1', 'O.fasciatus 1', 'O.fasciatus 2', 'P.xylostella 1', 'P.xylostella 2', 
            'T.castaneum 1', 'T.castaneum 2', 'T.ni 1', 'T.ni 2')

seqs3 <- c()
for(i in 1:length(file.names3)){
  file <- readDNAStringSet(file.names3[i])
  file_seqs <- as.data.frame(file)$x
  len <- length(file_seqs)
  seqs3 <- append(seqs3, len)
  rm(file)
  rm(file_seqs)
  rm(len)
  print('Done!')
}

table3 <- as.data.frame(seqs3)
row.names(table3) <- names2

#############################################

setwd("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.4.Insect_Libraries_Filtered/5.4.3.Filter_15/")

file.names4 <- dir("E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/5.4.Insect_Libraries_Filtered/5.4.3.Filter_15/", pattern = 'fasta')

names2 <- c('A.aegypti 1', 'A.aegypti 2', 'A.mellifera 1', 'A.mellifera 2', 'A.pisum 1', 'A.pisum 2', 'B.germanica 1', 'B.germanica 2',
            'B.terrestris 1','B.terrestris 2', 'D.melanogaster 1', 'D.virgifera 1', 'D.virgifera 2', 'H.melpomene 1', 'L.migratoria 1',
            'M.domestica 1', 'M.domestica 2', 'N.vespilloides 1', 'O.fasciatus 1', 'O.fasciatus 2', 'P.xylostella 1', 'P.xylostella 2', 
            'T.castaneum 1', 'T.castaneum 2', 'T.ni 1', 'T.ni 2')

seqs4 <- c()
for(i in 1:length(file.names4)){
  file <- readDNAStringSet(file.names4[i])
  file_seqs <- as.data.frame(file)$x
  len <- length(file_seqs)
  seqs4 <- append(seqs4, len)
  rm(file)
  rm(file_seqs)
  rm(len)
  print('Done!')
}

table4 <- as.data.frame(seqs4)
row.names(table4) <- names2

seqs_by_filter <- merge(x = table, y = table2, by=0, all=TRUE)
seqs_by_filter <- seqs_by_filter[,-1]
row.names(seqs_by_filter) <- names2
seqs_by_filter <- merge(x = seqs_by_filter, y = table3, by=0, all=TRUE)
seqs_by_filter <- seqs_by_filter[,-1]
row.names(seqs_by_filter) <- names2
seqs_by_filter <- merge(x = seqs_by_filter, y = table4, by=0, all=TRUE)
seqs_by_filter <- seqs_by_filter[,-1]
row.names(seqs_by_filter) <- names2

write.csv(seqs_by_filter,"E:/oscar/Documents/TFM/5.Filter_and_ReplicateLibraries/seqs_per_filter.csv", row.names = TRUE)
