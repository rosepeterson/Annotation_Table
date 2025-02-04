#!/bin/bash
#### writes swarm to extract reads asssoicated with taxid from kraken2
for f in S*/*out.txt;
do
in=${f%_out.txt}"_R1_001.fastq.gz"
in1=${f%_out.txt}"_R2_001.fastq.gz"
out=${f%_out.txt}"_R1_HTVL.fastq.gz"
out1=${f%_out.txt}"_R2_HTVL.fastq.gz"
echo "module load kraken/2.1.2 && python ./extract_kraken_reads.py -s $in -s2 $in1 -k $f --taxid 11908 -o $out -o2 $out1" >> Step1_extract_reads_kraken2.swarm
done
