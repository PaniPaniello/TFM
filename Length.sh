

fastq=/home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.3.FastQadapt/*trimmed.fq

for f in $fastq
do
cutadapt -m 27 -M 30 -o $f.27-30.fq $f
done

#mv /home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.3.FastQadapt/*18-34.fq /home/therea/Desktop/TFMOscar/1.FastQ_Raw_Data/1.4.Length_Selection/1.4.1.27_30/

