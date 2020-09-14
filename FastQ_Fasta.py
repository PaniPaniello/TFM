import glob
import Bio
from Bio import SeqIO
import shutil



def fastq_to_fasta(file):
    '''This function allows us to convert a fastq file to a fasta file
    fastq -> fasta
    '''
    fileout=str(file)+".fasta"
    SeqIO.convert(file, "fastq", fileout, "fasta")
    print("Conversion is done")

for file in glob.glob('/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.4.Length_Selection/1.4.2.27_30/*fq'):
    print(file)
    fastq_to_fasta(file)

#for file in glob.glob('/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.4.Length_Selection/1.4.1.28_34/*fq'):
#    print(file)
#    fastq_to_fasta(file)

#for file in glob.glob('/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/*txt'):
#    shutil.move(file, "/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.3.FastQadapt/Adapt_Report/")
