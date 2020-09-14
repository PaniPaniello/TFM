

files=/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.4.Length_Selection/1.4.2.27_30/*27-30.fq

for file in $files
do

perl TBr2_duster.pl -i $file 

done
