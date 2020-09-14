''' This script filters the inside data of the SraRunInfo table to just obtain libraries of germinal samples of different insects and then we select those insects. '''


import pandas as pd

def filter_csv(SRA_csv):
    ''' This function allows us to transform a SRATable from a bioproject
    with all the different insect libraries to a SRATable with all the user
    wanted libraries applying different filters and asking the user which 
    insect libraries want.
    '''
    df = pd.read_csv(SRA_csv, index_col='Run')
    filter1=df[df['SampleName'].str.contains("female", regex=False)]
    filter2=filter1[filter1['SampleName'].str.contains("germline", regex=False)]
    filter3=filter2[filter2['LibraryLayout'].str.contains("SINGLE", regex=False)]
    insects="yes"
    Finaldf=pd.DataFrame()
    while insects == "yes":
        print("LIST OF SPICES:")
        spices=filter3["ScientificName"].unique()
        for spice in spices:
            print(spice)
        insect=input("Enter the genus (first in uppercase) of the spice you want: ")
        print(insect)
        spicedf = filter3[filter3['SampleName'].str.contains(insect, regex=False)]
        Finaldf = Finaldf.append(spicedf)
        insects=input("Do you want more insects? yes/no")
    Finaldf.to_csv("Insects.csv")


filter_csv("SraRunInfo.csv")

import shutil

shutil.move("/home/therea/Desktop/TFMOscar/Insects.csv", "/home/therea/Desktop/TFMOscar/0.Raw_Data/Insects.csv")

