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

## 2019-06-07, _metagenomics_

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

## 2019-06-08, _transcriptomics_

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



# Read

* Phushing Limits of de novo assembly
    * https://t.co/ZSsiqJVjil?amp=1

* A metaanalysis of bat phylogenetics and positive selection based on genomes and transcriptomes from 18 species
    * https://www.pnas.org/content/pnas/early/2019/05/20/1814995116.full.pdf

* Identification of rare-disease genes using blood transcriptome sequencing and large control cohorts
    * https://www.nature.com/articles/s41591-019-0457-8

* BiosyntheticSPAdes: Reconstructing Biosynthetic Gene Clusters From Assembly Graphs
    * 