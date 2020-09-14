

import pandas as pd
import wget
import glob
import shutil

def download_data(insect_csv):
    '''This is a simple function using wget to download the wanted libraries
    from the last function.
    '''
    df = pd.read_csv(insect_csv, index_col='Run')
    for link in df['download_path']:
        print("Downloading data... This step can take a bit long...")
        wget.download(link)
        print("Done")

download_data("Insects.csv")

for file in glob.glob('SRR*'):
    shutil.move(file, "/home/therea/Desktop/TFMOscar/0.Raw_Data/0.1.Binary_Libraries/")
