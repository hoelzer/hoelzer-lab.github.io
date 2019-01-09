#######################################
## HSA SRA, 2x 100bp, strand specific RF
#######################################

##PARAMETERS SHARED
PROJECT=hsa
R1=hsa_1.fastq
R2=hsa_2.fastq
THREADS=48
MEM=400
DIR=~/$PROJECT
FINAL_DIR=~/$PROJECT/final

mkdir -p $DIR
mkdir -p $FINAL_DIR

kmer1=25
kmer2=35
kmer3=45
kmer4=55
kmer5=65

###################################################################################
## TRINITY
mkdir -p $DIR/trinity
Trinity --seqType fq --max_memory $MEM"G" --left $R1 --right $R2 --CPU $THREADS --output $DIR/trinity/ --SS_lib_type FR
ln -s $DIR/trinity/Trinity.fasta $FINAL_DIR/trinity.fasta
###################################################################################

###################################################################################
## TRANS-ABYSS
mkdir -p $DIR/transabyss

for kmer in $kmer1 $kmer2 $kmer3 $kmer4 $kmer5; do
	name=k${kmer}
	assemblydir=$DIR/transabyss/${name}
  mkdir -p $assemblydir
	finalassembly=${assemblydir}/${name}-final.fa
	transabyss -k ${kmer} --pe $R1 $R2 --SS --outdir ${assemblydir} --name ${name} --threads $THREADS
done

mergedassembly=$DIR/transabyss/merged.fa
finalassembly1=$DIR/transabyss/k"$kmer1"/k"$kmer1"-final.fa
finalassembly2=$DIR/transabyss/k"$kmer2"/k"$kmer2"-final.fa
finalassembly3=$DIR/transabyss/k"$kmer3"/k"$kmer3"-final.fa
finalassembly4=$DIR/transabyss/k"$kmer4"/k"$kmer4"-final.fa
finalassembly5=$DIR/transabyss/k"$kmer5"/k"$kmer5"-final.fa
transabyss-merge --threads $THREADS --mink $kmer1 --maxk $kmer5 --SS --prefixes k${kmer1}. k${kmer2}. k${kmer3}. k${kmer4}. k${kmer5}. --out ${mergedassembly} ${finalassembly1} ${finalassembly2} ${finalassembly3} ${finalassembly4} ${finalassembly5}
ln -s $DIR/transabyss/merged.fa $FINAL_DIR/trans-abyss.fasta
###################################################################################

###################################################################################
## SOAP-TRANS
mkdir -p $DIR/soap-trans
CONFIG=$DIR/soap-trans/test.config
touch $CONFIG
echo '#maximal read length' > $CONFIG
echo "max_rd_len=100" >> $CONFIG
echo "[LIB]" >> $CONFIG
echo "#maximal read length in this lib" >> $CONFIG
echo "rd_len_cutoff=100" >> $CONFIG
#echo "#average insert size" >> $CONFIG
#echo "avg_ins=200" >> $CONFIG
echo "#if sequence needs to be reversed" >> $CONFIG
echo "reverse_seq=1" >> $CONFIG
echo "#in which part(s) the reads are used" >> $CONFIG
echo "asm_flags=3" >> $CONFIG
#echo "q=#{@reads}"  >> $CONFIG #if @type == :SE
echo "#fastq paired end files" >> $CONFIG
echo "q1="$R1 >> $CONFIG
echo "q2="$R2 >> $CONFIG

kmer_min=$kmer1
kmer_max=$kmer5

# run soap with defualt settings
mkdir -p $DIR/soap-trans/default
SOAPdenovo-Trans-127mer all -s $DIR/soap-trans/test.config -o $DIR/soap-trans/default/k23 -p $THREADS
ln -s $DIR/soap-trans/default/k23.scafSeq $FINAL_DIR/soap-trans-default.fasta
###################################################################################

###################################################################################
## RNA-SPADES
mkdir -p $DIR/rnaspades
rnaspades.py --pe1-1 $R1 --pe1-2 $R2 --pe1-fr -t $THREADS -m $MEM --cov-cutoff auto -o $DIR/rnaspades/
ln -s $DIR/rnaspades/transcripts.fasta $FINAL_DIR/rna-spades.fasta
###################################################################################

###################################################################################
## SPADES
mkdir -p $DIR/spades
spades.py --sc --pe1-1 $R1 --pe1-2 $R2 --pe1-fr -t $THREADS -m $MEM --cov-cutoff auto -o $DIR/spades/
ln -s $DIR/spades/scaffolds.fasta $FINAL_DIR/spades.fasta
###################################################################################

###################################################################################
## OASES
k_min=$kmer1
k_max=$((kmer5 + 1))
k_step=10
type=-shortPaired

mkdir -p $DIR/oases
oases_pipeline.py -m $k_min -M $k_max -s $k_step -o $DIR/oases/ -d " $type -fastq $R1 $R2 -strand_specific -separate " -c
ln -s $DIR/oases/Merged/transcripts.fa $FINAL_DIR/oases.fasta
###################################################################################

###################################################################################
## IDBA-TRANS
###this tools assume the paired-end reads are in order (->, <-). If your data is in order (<-, ->), please convert it by yourself.
mkdir $DIR/idba-tran
R1=/mnt/dessertlocal/projects/transcriptome_assembly/data/prinseq/hsa_1_reversed.fastq
R2=/mnt/dessertlocal/projects/transcriptome_assembly/data/prinseq/hsa_2_reversed.fastq
fq2fa --merge --filter $R1 $R2 $DIR/idba-tran/r12.fasta
idba_tran -r $DIR/idba-tran/r12.fasta -o $DIR/idba-tran/ --mink $kmer1 --maxk $kmer5 --step 10 --num_threads $THREADS
ln -s $DIR/idba-tran/contig.fa $FINAL_DIR/idba-tran.fasta
R1=/mnt/dessertlocal/projects/transcriptome_assembly/data/prinseq/hsa_1.fastq
R2=/mnt/dessertlocal/projects/transcriptome_assembly/data/prinseq/hsa_2.fastq
###################################################################################

###################################################################################
## BRIDGER
# Error, try unstranded
OUT=$DIR/bridger/
Bridger.pl --seqType fq --left $R1 --right $R2 --CPU $THREADS -o $OUT
Bridger.pl --seqType fq --left $R1 --right $R2 --CPU $THREADS -o $OUT # start second time, because first run crashs at some point and then finishs
ln -s $OUT/Bridger.fasta $FINAL_DIR/bridger.fasta
###################################################################################

###################################################################################
## BINPACKER
OUT=$DIR/binpacker/
mkdir -p $OUT
BinPacker -s fq -p pair -l $R1 -r $R2 -m RF -o $OUT
ln -s $OUT/BinPacker_Out_Dir/BinPacker.fa $FINAL_DIR/binpacker.fasta
###################################################################################

###################################################################################
## SHANNON
mkdir $DIR/shannon
python /mnt/prostlocal/programs/shannon/0.0.2/shannon.py -p $THREADS -o $DIR/shannon --left $R1 --right $R2 --ss
ln -s $DIR/shannon/shannon.fasta $FINAL_DIR/shannon.fasta
###################################################################################

###################################################################################
## MIRA
mkdir $DIR/mira
touch $DIR/mira/manifest.config
echo "project = $PROJECT" > $DIR/mira/manifest.config
echo "job = est,denovo,accurate" >> $DIR/mira/manifest.config
echo "parameters = -DI:trt=/mnt/dessertlocal/projects/transcriptome_assembly/tmp -NW:cnfs=no -NW:cmrnl=no -SK:mmhr=1" >> $DIR/mira/manifest.config
#    if @type == :SE
#      config << "# defining illumina single end reads"
#      config << "readgroup = se"
#      config << "data = #{@reads}"
#      config << "technology = #{@technology}"
#    end
echo "# defining illumina paired end reads" >> $DIR/mira/manifest.config
echo "readgroup = pe" >> $DIR/mira/manifest.config
echo "data = $R1 $R2" >> $DIR/mira/manifest.config
echo "technology = solexa" >>  $DIR/mira/manifest.config
echo "template_size = 50 1000 autorefine" >>  $DIR/mira/manifest.config
#echo "segment_placement = ---> <---" >>  $DIR/mira/manifest.config
echo "segment_placement = <--- --->" >>  $DIR/mira/manifest.config

mira -c $DIR/mira -t $THREADS $DIR/mira/manifest.config
ln -s $DIR/mira/"$PROJECT"_assembly/"$PROJECT"_d_results/"$PROJECT"_out.unpadded.fasta $FINAL_DIR/mira.fasta
###################################################################################
