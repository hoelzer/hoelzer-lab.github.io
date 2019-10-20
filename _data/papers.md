# A paper per day

To succeed in science, reading is of paramount importance. However, I always
lack the time (or I find other excuses) to read all the interesting sounding
manuscripts I stumble across every day on Twitter or bioRxiv. Inspired by a
tweet of
@[BeAScientist](https://twitter.com/BeAScientist/status/1136657979317448705) I
will challenge myself to read _a scientific paper per (work)day_. 

I'm trying to update this list to 1) keep track of myself, 2) provide some
[TL;DR](https://www.urbandictionary.com/define.php?term=tl%3Bdr) notes for the
impatient and for me to rember, and 3) perhaps inspire others to do the same and
to join the _a paper per day_ challenge.  

_Martin H&ouml;lzer_

## 2019-06-07, _metagenomics_ | _web service_

[Mitchell, Alex L., et al. "EBI Metagenomics in 2017: enriching the analysis of microbial communities, from sequence reads to assemblies." Nucleic acids research 46.D1 (2017): D726-D735.](https://academic.oup.com/nar/article/46/D1/D726/4561650)

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@article{Mitchell:17,<br />
  title={{E}{B}{I} {M}etagenomics in 2017: enriching the analysis of microbial communities, from sequence reads to assemblies},<br />
  author={Mitchell, Alex L and Scheremetjew, Maxim and Denise, Hubert and Potter, Simon and Tarkowska, Aleksandra and Qureshi, Matloob and Salazar, Gustavo A and Pesseat, Sebastien and Boland, Miguel A and Hunter, Fiona M I and others},<br />
  journal={Nucleic Acids Res},<br />
  volume={46},<br />
  number={D1},<br />
  pages={D726--D735},<br />
  year={2017},<br />
}</blockquote>
</div>

* EBI Metagenomics: one of the worlds largest metagenomic data repository
* the paper presents updates from the last 2 years (~2015-2017) to the service, [MGnify](https://www.ebi.ac.uk/metagenomics/)
* analyis and archive sequencing data from microbial environments
* new: taxonomic assignment by 16S and 23S rRNA assignments using Infernal and Rfam
* also new: metagenomic assembly (w metaSPAdes, MEGAHIT and Minia) upon request --> 50mio non-redundant protein sequences
    * selection of optimal assembly pipeline using a neural network
* metagenome analysis problems
    * need high computational power
    * different tools/pipelines --> hard to compare results
* majority of data is 16S rRNA amplicons, followed by WGS
* improved search interface

## 2019-06-08, _transcriptomics_ | _tool_

[Vera Alvarez, Roberto, et al. "TPMCalculator: one-step software to quantify mRNA abundance of genomic features." Bioinformatics (2018).](https://academic.oup.com/bioinformatics/article/35/11/1960/5150437#.XPnnedggr9c.twitter)

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@article{Vera:18,<br />
  title={{T}{P}{M}{C}alculator: one-step software to quantify m{R}{N}{A} abundance of genomic features},<br />
  author={Vera Alvarez, Roberto and Pongor, Lorinc Sandor and Mari{\~n}o-Ram{\'\i}rez, Leonardo and Landsman, David},<br />
  journal={Bioinformatics},<br />
  year={2018}<br />
}</blockquote>
</div>

* input: BAM, output: TPM values, raw counts, feature lengths for genes, transcripts, exons and introns
* [https://github.com/ncbi/TPMCalculator](https://github.com/ncbi/TPMCalculator)
* RNA-Seq raw count normalization evolved from RPKM, FPKM, to TPM
    * R/F-PKM are biased when comparing multiple samples
    * but still, many tools use them instead of TPM

## 2019-06-11, _transriptomics_ | _bats_ | _miRNA_ | _longevity_

[Zixia Huang et al. "Longitudinal comparative transcriptomics reveals unique mechanisms underlying extended healthspan in bats." Nature Ecology & Evolution (2019).](https://sci-hub.tw/10.1038/s41559-019-0913-3) 

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@Article{Huang:19,<br />
  author        = {Huang, Zixia and Whelan, Conor V and Foley, Nicole M and Jebb, David and Touzalin, Fr{\'e}d{\'e}ric and Petit, Eric J and Puechmaille, S{\'e}bastien J and Teeling, Emma C},<br />
  title         = {Longitudinal comparative transcriptomics reveals unique mechanisms underlying extended healthspan in bats},<br />
  journal       = {Nat Ecol Evol},<br />
  year          = {2019},<br />
}</blockquote>
</div>

* bats are longest-lived mammals
* 8-year study of ageing in _Myotis myotis_
* 150 blood samples, RNA-Seq
* also compared with ~300 longitudinal RNA-Seq samples of other mammals (human, mouse, wolf)
* bats show a unique age-related gene expression
* partial regulated by miRNAs
* _Myotis_ maintain length of telomeres with age without developing cancer
* like humans, 75% of the transcriptional output derived from the top 100 expressed transcripts (enriched DNA repair!)
* _Myotis_ might have evolved an elaborate DNA repair machinery and a distinct immune system (no increased inflammation in age)
* genome maintenance and cell cycle regulation down-regulated in the other mammals, not in bats
* GenAge database, 207 human ageing-associated genes
* M&Ms
    * rRNA- and smallRNA-Seq Illumina
    * 50mill reads, 2x 125bp
    * 8mill reads, 1x 50bp for small
    * 100 transcriptomes, 50 miRNomes from 150 blood samples
    * TopHat, Cufflinks, ...
    * Metascape for functional enrichment analysis
    * miRNA-mRNA interaction analysis: ExUTR, miRanda
    * raw data: https://www.ncbi.nlm.nih.gov/bioproject/PRJNA503704
* supplement
    * only 30% mapping rate with smallRNA-Seq (why?)
    * 

## 2019-06-12, _metagenomics_ | _assembly_ | _tool_

[Li, Dinghua, et al. "MEGAHIT: an ultra-fast single-node solution for large and complex metagenomics assembly via succinct de Bruijn graph." Bioinformatics 31.10 (2015): 1674-1676.](https://academic.oup.com/bioinformatics/article/31/10/1674/177884)

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@Article{Li:15,<br />
  title={{MEGAHIT}: an ultra-fast single-node solution for large and complex metagenomics assembly via succinct de {B}ruijn graph},<br />
  author={Li, Dinghua and Liu, Chi-Man and Luo, Ruibang and Sadakane, Kunihiko and Lam, Tak-Wah},<br />
  journal={Bioinformatics},<br />
  volume={31},<br />
  number={10},<br />
  pages={1674--1676},<br />
  year={2015}<br />
}</blockquote>
</div>

* [GitHub](https://github.com/voutcn/megahit)
* de novo assembler for large and complex metagenomics data
* GPU support
* based on _succinct de Brujin_ graphs: compressed representations of _de Brujin_
* build SdBGs iteratively from a small to a large _k_-mer

## 2019-06-13, _metagenomics_ | _pipeline_

[Uritskiy, Gherman V., Jocelyne DiRuggiero, and James Taylor. "MetaWRAP—a flexible pipeline for genome-resolved metagenomic data analysis." Microbiome 6.1 (2018): 158.](https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-018-0541-1)

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@Article{Uritskiy:18,<br />
  title={Meta{WRAP} - a flexible pipeline for genome-resolved metagenomic data analysis},<br />
  author={Uritskiy, Gherman V and DiRuggiero, Jocelyne and Taylor, James},<br />
  journal={Microbiome},<br />
  volume={6},<br />
  number={1},<br />
  pages={158},<br />
  year={2018},<br />
  publisher={BioMed Central}<br />
}</blockquote>
</div>

* genome-resolved metagenomic data analysis
* [MetaWRAP](https://github.com/bxlab/metaWRAP)
* extract individual draft genomes (bins)
* from raw reads to metagenomic bins
* binning: often clustering togehter similar scaffolds e.g. by _k_-mer, codon usage, and similar coverage
* highly modular, each modul is a shell script
* custom python2.7 scripts
* conda, docker
* database download guide
* reassemble_bins module (map reads to bins and assemble again with SPAdes instead of metaSPAdes/MegaHit); highly improves bin quality
    * The Reassemble_bins module improved upon 78%, 98%, and 2% of the bins in the water, gut, and soil bin sets, respectively.
    * soil is so diverse, that the re-assembly step confuses
    * own idea: integrate long reads in the re-assembly step
* metagenomic binning software: MaxBin2, metaBAT2, CONCOCT
* test data: water, gut, soil
    * water samples were dominated by _Proteobacteria_
* Bin_refinement module produced 235, 175, and 134 acceptable quality bins in the water, gut, and soil samples

## 2019-06-14, _meta-transcriptomics_ | _pipeline_ | _re-assembly_

[Johnson, Lisa Kristine, Harriet Alexander, and C. Titus Brown. "Re-assembly, quality evaluation, and annotation of 678 microbial eukaryotic reference transcriptomes." GigaScience (2018): giy158.](https://academic.oup.com/gigascience/article/8/4/giy158/5241890)

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@article{Johnson:18,<br />
  title={Re-assembly, quality evaluation, and annotation of 678 microbial eukaryotic reference transcriptomes},<br />
  author={Johnson, Lisa Kristine and Alexander, Harriet and Brown, C Titus},<br />
  journal={GigaScience},<br />
  volume={8},<br />
  number={4},<br />
  pages={giy158},<br />
  year={2018}<br />
}</blockquote>
</div>

With the growing volume of sequencing data, the development of reusable software
is becoming increasingly important. A great demonstration of how re-assembly of
old RNA-Seq data by new tools improves the whole analysis!

* short-read RNA-Seq pipeline for Marine Microbial Eukaryotic Transcriptomes
* evaluation and comparison
* newer transcriptome assemblies contained the majority of previous contigs as well as new content, ~8% more genes
* no single “best” reference transcriptome
* we need pipelines to re-assemble!
* Trimmomatic -- khmer -- Trinity v2.2.0
* re-analyzed 678 samples of sequenced marine protists, spanning more than 40 eukaryotic phyla ([MMETSP](https://github.com/dib-lab/dib-MMETSP))
* raw reads: [PRJNA231566](https://www.ncbi.nlm.nih.gov/bioproject?term=PRJNA231566)
* previously assembled with Trans-ABySS
* Transcriptomes were annotated using the [dammit pipeline](https://github.com/dib-lab/dammit)
* eval with Transrate
* Trinity-based re-assemblies generally outperform Trans-ABySS-based assemblies


## 2019-06-17, _genome assembly_ | _prokaryotic_ | _de novo_

[Schmid, Michael, et al. "Pushing the limits of de novo genome assembly for complex prokaryotic genomes harboring very long, near identical repeats." Nucleic acids research 46.17 (2018): 8953-8965.](https://academic.oup.com/nar/article/46/17/8953/5078241)

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@Article{schmid2018pushing,<br />
  title={Pushing the limits of \emph{de novo} genome assembly for complex prokaryotic genomes harboring very long, near identical repeats},<br />
  author={Schmid, Michael and Frei, Daniel and Patrignani, Andrea and Schlapbach, Ralph and Frey, Juerg E and Remus-Emsermann, Mitja NP and Ahrens, Christian H},<br />
  journal={Nucleic Acids Res},<br />
  volume={46},<br />
  number={17},<br />
  pages={8953--8965},<br />
  year={2018},<br />
  publisher={Oxford University Press}<br />
}</blockquote>
</div>

* Pseudomonas koreensis P19E3, containing several near identical 70kbp repeats
* also a variable shufflon region
* not able to assemble with PacBio, but with Nanopore
* very complex genome structures seem a general phenomenon among _Pseudomonas_ (gammaproteobacteria)
* further: repeat complexity analysis of 9,331 bacterial genomes revealed: ~10% that are particularly difficult to assemble
* genome assembly:
    * PacBio: HGAP and Flye, no further polishing
    * ONT reads: were filtered (>30kb) and assembled w/ Flye followed by three Racon runs and a last Illumina-based polishing using FreeBayes
    * Illumina: SPAdes
* QC: quast, sniffles (SVs) --> mapping ONT back to the assembly
* single misassmbled repeat (flye) --> __manually corrected__ with proovread (ONT+Ill)
* rDNA operon typically 7 kb
* of 270 _Pseudomonas_ genomes, 245 had >30kb repeats and up to 300 500 bp repeats
* list of hard to assemble bacteria (many long repeats), Tab. 5

## 2019-06-18, _assembly graph_ | _tool_ | _visualization_

[Mikheenko, Alla, and Mikhail Kolmogorov. "Assembly Graph Browser: interactive visualization of assembly graphs." Bioinformatics (2019).](https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/btz072/5306331)

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@Article{Mikheenko:19,<br />
  title={Assembly {G}raph {B}rowser: interactive visualization of assembly graphs},<br />
  author={Mikheenko, Alla and Kolmogorov, Mikhail},<br />
  journal={Bioinformatics},<br />
  year={2019}<br />
}</blockquote>
</div>

* [GitHub](https://github.com/almiheenko/AGB)
* most genome assembly projects focus on contigs/scaffolds
* however, more information is included in the assembly graph that is difficult to explore
* AGB helps to visualize (large) graphs including repeat analysis, construction of contracted assembly graphs, ...
* Bandage is also a good tool, but difficult to explore large assembly graphs
* AGB splits assembly graph in sub-graphs (connected components of the full graph)
* GFA, FASTG, and Graphviz format allowed

## 2019-06-19, _genome assembly_ | _tool_ | _visualization_

[Krzywinski, Martin, et al. "Circos: an information aesthetic for comparative genomics." Genome research 19.9 (2009): 1639-1645.](https://genome.cshlp.org/content/19/9/1639.full.pdf+html)

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@Article{Krzywinski:09,<br />
  title={Circos: an information aesthetic for comparative genomics},<br />
  author={Krzywinski, Martin and Schein, Jacqueline and Birol, Inanc and Connors, Joseph and Gascoyne, Randy and Horsman, Doug and Jones, Steven J and Marra, Marco A},<br />
  journal={Genome research},<br />
  volume={19},<br />
  number={9},<br />
  pages={1639--1645},<br />
  year={2009}<br />
}</blockquote>
</div>

* [Circos](http://circos.ca/)
* circular representation of genomes, annotations, ...
* visualization is important, we generate new data so fast but lack appropriate methods to analyze, store, and visualize
    * e.g.: comparative genomics
* linear representations are difficult to read
* Circos applies a circular ideogram layout to display relationships between genomic intervals
* flat-text config files as input are possible
* input: GFF-style data and Apache-like config files
* output: PNG and SVG
* _fazit_ fancy images

## 2019-06-20, _Mapping_ | _graph-based_ | _genotyping_ | _HISAT2_

[Graph-based genome alignment and genotyping with HISAT2 and HISAT-genotype]()

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@Article{

}</blockquote>
</div>

* human ref genome  represents only few individuals, limiting its usage for genotyping
* HISAT2 using a Ferragina Manzini index
* used HISAT2 to search an expanded model of the human genome including 14.5 million SNVs, thus representing a population of genomes
* human ref genome does not reflect the diversity of individuals or populations
* genome indexing scheme using a graph-based approach to incorporate SNVs
* usage of small sub-genome indexes (~57kb each)
* only 50-60% slower HISAT2 mapping when incoporating million of SNVs
* greater aln accuracy for reads w/ SNPs
* indexing repeat sequences to have a memory-less representation of multiple mapped reads
* a genotype-genome build by HISAT-genotype should only be used for genotyping!
* using HISAT2.graph increased aln rates by 1-5% and is fastest
* per default up to 3 mismatches (known SNPs are not counted as mismatches)

## 2019-06-21, _Assembly_ | _Metagenomics_ | _Tool comparison_

[Assembly methods for nanopore-based metagenomic sequencing: a comparative study]()

<label for="trigger">Show BibTeX</label>
<input id="trigger" type="checkbox">
<div class="box">
<blockquote class="" cite=""> 
@Article{

}</blockquote>
</div>

* short reads result often in highly fragmented metagenomes, long reads can help
* but: which available assembly tool might work good?
* two commercially available mock communities
* _flye_ and _canu_ performed well in all data sets tested
* metagenomes: existence of intergenomic repeats makes short-read assembly even more difficult
* ont is more frequently used, however, evaluations are mainly done for single bacterial genomes and not metagenomes
* all reads trimmed with porechop
* six short- and six long-read tools
* nanopore sequences polished with Illumina reads had a similar error profile to MiSeq-only assemblies (Goldstein 2019)


# ToDo list

* Large-scale sequence comparisons with sourmash
    * https://www.biorxiv.org/content/10.1101/687285v1

* Advantages of meta-total RNA sequencing (MeTRS) over shotgun metagenomics and amplicon-based sequencing in the profiling of complex microbial communities
    * https://www.nature.com/articles/s41522-017-0046-x

* Protein-level assembly increases protein sequence recovery from metagenomic samples manyfold
    * https://www.nature.com/articles/s41592-019-0437-4

* Increasing the efficiency of long-read sequencing for hybrid assembly with k-mer-based multiplexing
    * https://www.biorxiv.org/content/10.1101/680827v2

* Towards a gold standard for benchmarking gene set enrichment analysis
    * https://www.biorxiv.org/content/10.1101/674267v1

* Current best practices in single-cell RNA-seq analysis: a tutorial
    * https://www.embopress.org/doi/pdf/10.15252/msb.20188746

* Discovery and inhibition of an interspecies gut bacterial pathway for Levodopa metabolism
    * https://science.sciencemag.org/content/sci/364/6445/eaau6323.full.pdf

* A technology-agnostic long-read analysis pipeline for transcriptome discovery and quantification
    * https://www.biorxiv.org/content/10.1101/672931v1
    * https://github.com/ENCODE-DCC/long-rna-seq-pipeline

* Comprehensive comparison of Pacific Biosciences and Oxford Nanopore Technologies and their applications to transcriptome analysis
    * https://f1000researchdata.s3.amazonaws.com/manuscripts/12836/ef4d405a-7dd0-4de7-b4f7-7b222886c1f2_10571_-_kin_fai_au_v2.pdf?doi=10.12688/f1000research.10571.2&numberOfBrowsableCollections=17&numberOfBrowsableGateways=23

* The advantages and disadvantages of short- and long-read metagenomics to infer bacterial and eukaryotic community composition
    * https://www.biorxiv.org/content/10.1101/650788v2

* Nanopype: A modular and scalable nanopore data processing pipeline
    * https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/btz461/5514474#.XQIhqWpUgjA.twitter

* ganon: continuously up-to-date with database growth for precise short read classification in metagenomics
    * https://www.biorxiv.org/content/10.1101/406017v2

* A metaanalysis of bat phylogenetics and positive selection based on genomes and transcriptomes from 18 species
    * https://www.pnas.org/content/pnas/early/2019/05/20/1814995116.full.pdf

* Identification of rare-disease genes using blood transcriptome sequencing and large control cohorts
    * https://www.nature.com/articles/s41591-019-0457-8

* BiosyntheticSPAdes: Reconstructing Biosynthetic Gene Clusters From Assembly Graphs
    * https://genome.cshlp.org/content/29/8/1352.abstract?platform=hootsuite

* Exploiting orthology and de novo transcriptome assembly to refine target sequence information
    * https://bmcmedgenomics.biomedcentral.com/articles/10.1186/s12920-019-0524-5

* MULKSG: MULtiple KSimultaneous Graph Assembly
    * https://link.springer.com/chapter/10.1007/978-3-030-18174-1_9

* Overview of Virus Metagenomic Classification Methods and Their Biological Applications
    * https://www.frontiersin.org/articles/10.3389/fmicb.2018.00749/full

* NanoPlot
    * https://academic.oup.com/bioinformatics/article/34/15/2666/4934939

* metaplasmidspades; Plasmid detection and assembly in genomic and metagenomic data sets
    * https://genome.cshlp.org/content/29/6/961

* Next-generation transcriptome assembly and analysis: impact of ploidy
    * https://reader.elsevier.com/reader/sd/pii/S1046202318303803?token=6B56E6005D125657F75FF7A2651B28BF62C680FC2F24D7C3B2EE0034EAFCB86DCAF3B31892D544BF29986452407FC383

* Population level mitogenomics of long-lived bats reveals dynamic heteroplasmy and challenges the free radical theory of ageing.
    * https://www.nature.com/articles/s41598-018-31093-2.pdf

* Metascape provides a biologist-oriented resource for the analysis of systems-level datasets
    * https://www.nature.com/articles/s41467-019-09234-6

* Overview of Virus Metagenomic Classification Methods and Their Biological Applications
    * https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5924777/pdf/fmicb-09-00749.pdf

* Choice of assembly software has a critical impact on virome characterisation.
    * https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-019-0626-5

* New approaches for metagenome assembly with short reads
    * https://academic.oup.com/bib/advance-article/doi/10.1093/bib/bbz020/5363831

* Software engineering for scientific big data analysis
    * https://academic.oup.com/gigascience/article/8/5/giz054/5497810

* An improved pig reference genome sequence to enable pig genetics and genomics research
    * https://www.biorxiv.org/content/10.1101/668921v1

* MEGAN-LR: new algorithms allow accurate binning and easy interactive exploration of metagenomic long reads and contigs
    * https://link.springer.com/article/10.1186/s13062-018-0208-7

* A Reference-Free Algorithm for Computational Normalization of Shotgun Sequencing Data
    * https://arxiv.org/abs/1203.4802

* Long-Read Sequencing - A Powerful Tool in Viral Transcriptome Research
    * https://www.cell.com/trends/microbiology/fulltext/S0966-842X(19)30036-8

* Effect of de novo transcriptome assembly on transcript quantification
    * https://www.biorxiv.org/content/10.1101/380998v4

* What are the most influencing factors in reconstructing a reliable transcriptome assembly?
    * https://www.biorxiv.org/content/10.1101/220269v1

* Assembly-free single-molecule nanopore sequencing recovers complete virus genomes from natural microbial communities
    * https://www.biorxiv.org/content/10.1101/619684v1

* Performance of neural network basecalling tools for Oxford Nanopore sequencing
    * https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1727-y

* Transcriptome assembly from long-read RNA-seq alignments with StringTie2
    * https://www.biorxiv.org/content/10.1101/694554v1

* Exploring neighborhoods in large metagenome assembly graphs reveals hidden sequence diversity
    * https://www.biorxiv.org/content/10.1101/462788v2

* Hybrid metagenomic assembly enables high-resolution analysis of resistance determinants and mobile elements in human microbiomes
    * https://www.nature.com/articles/s41587-019-0191-2

* FORGe: prioritizing variants for graph genomes
    * https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1595-x

* Metagenomic binning and association of plasmids with bacterial host genomes using DNA methylation
    * https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5762413/pdf/nihms920168.pdf

* Isolation of an archaeon at the prokaryote-eukaryote interface
    * https://www.biorxiv.org/content/biorxiv/early/2019/08/06/726976.full.pdf

* The evaluation of RNA-Seq de novo assembly by PacBio long read sequencing 
    * https://www.biorxiv.org/content/10.1101/735621v1

* Defining the human gut host–phage network through single-cell viral tagging
    * https://www.nature.com/articles/s41564-019-0526-2

* ATLAS: a Snakemake workflow for assembly, annotation, and genomic binning of metagenome sequence data
    * https://www.biorxiv.org/content/10.1101/737528v1

* N6-methyladenosine RNA modification–mediated cellular metabolism rewiring inhibits viral replication
    * https://science.sciencemag.org/content/early/2019/08/21/science.aax4468

* rnaSPAdes: a de novo transcriptome assembler and its application to RNA-Seq data
    * https://academic.oup.com/gigascience/article/8/9/giz100/5559527

* A Pan-cancer Transcriptome Analysis Reveals Pervasive Regulation through Alternative Promoters
    * https://www.cell.com/action/showPdf?pii=S0092-8674%2819%2930906-7

* 12 Grand Challenges in Single-Cell Data Science
    * https://peerj.com/preprints/27885/

* Bat influenza viruses transmit among bats but are poorly adapted to non-bat species
  * https://www.nature.com/articles/s41564-019-0556-9
  * https://sci-hub.se/https://www.nature.com/articles/s41564-019-0556-9

* Illuminating the dark side of the human transcriptome with TAMA Iso-Seq analysis
    * https://www.biorxiv.org/content/10.1101/780015v1

* Assembly-free single-molecule nanopore sequencing recovers complete virus genomes from natural microbial communities
    * https://www.biorxiv.org/content/10.1101/619684v1

* High-definition spatial transcriptomics for in situ tissue profiling
    * https://www.nature.com/articles/s41592-019-0548-y

* A unified sequence catalogue of over 280,000 genomes obtained from the human gut microbiome
    * https://www.biorxiv.org/content/biorxiv/early/2019/09/19/762682.full.pdf

* Microbial abundance, activity and population genomic profiling with mOTUs2
    * https://www.nature.com/articles/s41467-019-08844-4.pdf

* Ultrafast search of all deposited bacterial and viral genomic data
    * https://www.nature.com/articles/s41587-018-0010-1

* Interplay between the human gut microbiome and host metabolism
    * https://www.nature.com/articles/s41467-019-12476-z

* The Human Gut Virome Is Highly Diverse, Stable, and Individual Specific
    * https://doi.org/10.1016/j.chom.2019.09.009

* CodAn: predictive models for the characterization of mRNA transcripts in Eukaryotes
    * https://www.biorxiv.org/content/10.1101/794107v1

* Accurate and Complete Genomes from Metagenomes 
    * https://www.biorxiv.org/content/biorxiv/early/2019/10/17/808410.full.pdf

* Recovery of gene haplotypes from a metagenome
    * https://www.biorxiv.org/content/10.1101/223404v3