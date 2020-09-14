# Final Master Project
### Oscar Paniello Pérez-Hickman

## Conservation of piRNAs in insect ovary cells

For this study, the programming languages used are: R (“Biostrings”, “VennDiagram”, “venn”, “ggplot2”, “reshape2”, and “UpSetR”), Bash (”SRA Toolkit”, “fastqc”, “cutadapt”, “trim_galore”) and Python (“pandas”, “wget”, “glob”, “shutil”, “os”, “Bio”). Also, scrips from Perl were used (“TBr2_duster” and “TBr2_collapse” from NGS ToolBox).

* Sra_Filter.py -->
 Python script that filters the information of a Bioproject information table to obtain the data that we want and the link to download it.

* Wget.py -->
 This python script allows us to download all the data obtained from the result of Sra_Filter.py.

* Binary_to_FastQ.py -->
 Script that transforms the binary libraries into FastQ files.

* FastQC.py -->
 Simple script that uses the funciton "fastqc" to perform a quality control of all our libraries.

* Trim_adapt.py -->
 This script contains a python function that calls to the OS the "trim_galore" script and eliminate all adaptors in our library reads.

* Length.sh -->
 Bash scrip that uses "cutadapt" function to select the length threshold to our reads.

* FastQ_Fasta.py -->
 Script that converts a fastq file into a fasta file.

* Histogram_SeqXLen.py -->
 Script that reads the length of all reads in a library and illustrates the results in an histogram.

* Dust.sh -->
 Bash script that uses a perl script (TBr2_duster.pl) from the "NGS ToolKit". This perl script eliminates all low complexity reads.

* Collapser.sh -->
 Bash script that uses a perl script (TBr2_collapse.pl) from the "NGS ToolKit". This perl script collapses all reads from a library.

* Replicates_VennDiagram.R -->
 R general script that performs a comparison of the content (homogeneity) of two library replicates and illustrates the results in a Venn Diagram figure.
 We can find three variants of the script that performs the same action for libraries with different read cutoff applied:
  * Replicates_VennDiagram_Filter2.R
  * Replicates_VennDiagram_Filter10.R
  * Replicates_VennDiagram_Filter15.R

* seqs_x_nreads.R -->
 First R script that performs histograms of the distribution of the sequences by the number of reads one by one.
 This script have 4 variants using a Loop to perfrom all the histograms:
  * seqs_x_nreads_loop.R
  * seqs_x_nreads_2_loop.R
  * seqs_x_nreads_10_loop.R
  * seqs_x_nreads_15_loop.R

* table_of_seqs_filter.R -->
 This R script creates a table with all libraries and their respective sequences resultant from the cutoffs applied.

* Merge scripts -->
The next simple scripts merge different libraries to create library pools.
  * Merge_panoistic.sh
  * Merge_polytrophic.sh
  * Merge_telotrophic.sh
* Venn scripts -->
 The following scripts perform a comparsion of the content of different libraries and illustrates the results using Venn Diagrams or UpSet Intersection Barplots:
  * VennPano.R
  * VennMTelo.R
  * VennMPolyOrder.R
