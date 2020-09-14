import os
import glob
import shutil

def trim_adapt(file):
    '''This function uses trimm_galore package to cut all the adaptors that
    remain in our library reads
    FastQ -> TimmFastQ
    '''
    trimmadaptor = "trim_galore "+file
    print('Starting trimming...')
    os.system(trimmadaptor)
    print('Trimming done!')

for fqfile in glob.glob('/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.1.FastQ/*fastq'):
    print(fqfile)
    trim_adapt(fqfile)


for file in glob.glob('/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/*fq'):
    shutil.move(file, "/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.3.FastQadapt/")


for file in glob.glob('/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/*txt'):
    shutil.move(file, "/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.3.FastQadapt/Adapt_Report/")
