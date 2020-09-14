import os
import glob
import shutil

def fastQC(file):
    '''This function makes the QC step using bash for all the fastq files 
    in our directory
    '''
    FastQC = "fastqc " +file
    print('Starting quality-control...')
    os.system(FastQC)
    print('Quality-control done!')

for fqfile in glob.glob('/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.1.FastQ/SRR*'):
    print(fqfile)
    fastQC(fqfile)

for fqfile in glob.glob('/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.1.FastQ/OvD7*'):
    print(fqfile)
    fastQC(fqfile)

for file in glob.glob('/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.1.FastQ/*fastqc*'):
    shutil.move(file, "/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.2.FastQC/")
