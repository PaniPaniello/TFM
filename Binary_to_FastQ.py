import os
import glob
import shutil


def Binary_to_fastq(file):
    '''SRRdata is a binary format so we need to transform it. This function 
    transforms the binary format to a fastq file format using bash commands.
    Binary -> FastQ
    '''
    BinaryFastQ = "fastq-dump "+file
    print('Starting conversion...')
    os.system(BinaryFastQ)
    print('Conversion done!')

for file in glob.glob('/home/therea/Desktop/TFMOscar/0.Raw_Data/0.1.Binary_Libraries/SRR*'):
    print(file)
    Binary_to_fastq(file)

for file in glob.glob('SRR*'):
    shutil.move(file, "/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.1.FastQ")
