import pandas as pd
import glob
import Bio
from Bio import SeqIO
import pylab

def histogram_reads_len(file):
    ''' This function will allow us to create different histograms
    with the length of the reads.
    fasta -> jpeg
    '''
    fileout=str(file)+".png"
    lengths = map(len, Bio.SeqIO.parse(file, 'fasta'))
    histogram = pd.Series(lengths).hist(color='deepskyblue', bins=15, grid=False)
    fig = histogram.get_figure()
    fig.savefig(fileout)
    print("Graph done!")

for file in glob.glob("/home/therea/Desktop/TFMOscar/2.Fasta_Raw_Data/2.1.Fasta_Pull/2.1.1.18_34/*fasta"):
    print(file)
    histogram_reads_len(file)

#for file in glob.glob('/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.4.Length_Selection/1.4.1.18_34/*fasta'):
#    shutil.move(file, "/home/therea/Desktop/TFMOscar/2.Fasta_Raw_Data/2.1.Fasta_Pull/2.1.1.18_34/")
