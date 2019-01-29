---
title: "Hölzer Lab - Jobs"
layout: homelay
excerpt: "Hölzer Lab - Jobs"
sitemap: false
permalink: /jobs/
---

We are always looking for motivated students to join the group. We have many projects and ideas for assistants and bachlor/master theses in areas such as:

- *de novo* transcriptome assembly
- prokaryotic annotation pipelining
- high-throughput data visualization
- virus bioinformatics  
- long-read analysis

Some examples are given here, please [contact](/team) me directly for more details.

### Analysis of host/virus sequencing data: differential alternative splicing during viral infections
Alternative splicing plays crucial roles during many biological processes.
Especially, when a host system is challenged by a viral infection, the splicing
machinery seems to be disturbed. However, it is not understood on a large scale
how viral infections affect the splicing machinery and result in differential
expressed isoforms. We want to use transcriptomic (RNA-Seq) datasets publicly
available from databases as the NCBI SRA to screen for differential alternative
splicing events (such as intron retention, exon skipping, ...) and to identify
genes, that are generally affected during viral infections.

### Pan-genome pipeline: calculation of bacterial core gene sets (or "dudes")
Defining the core gene set, so the genes that are common among many species (or
bacterial strains), is still a challenging task. Although computational tools
already exist (Roary, BPGA, panX, ...), an easy-to-use pipeline that starts with
bacterial genomes as input and automizes all steps from the annotation,
clustering, visualization of the results and the downstream analyses (such as
phylogeny) is needed. In a pilot project, we already showed that combining
sequence homology output and ILPs to resolve gene clusters can outperform
current workflows. Here, you can help to test and extend our preliminary
pipeline called RIBAP (written in python).

### Differential isoform expression analysis by combining short- and long-read data 
Long-read sequencing, as provided by Oxford Nanopore Technologies (ONT), is not
only revolutionizing genomics but also the way we are able to analyze
transcriptomes nowadays. With nanopores, we can for the first time directly
sequence native RNA and therefore transcripts in their entirety. Especially for
non-model organisms with no available genome sequence, sequencing the
transcriptome can directly help to tackle various biological questions. We want
to combine short- (Illumina) and long-read (ONT) transcriptomic data to
characterize and quantify isoforms _de novo_.

### Identification and annotation of plasmids 
Plasmids are most commonly found as small circular, double-stranded DNA
molecules in bacteria. In nature, they often carry genes that may benefit the
survival of an organism, for example, antibiotic resistance. We want to evaluate
current computational tools for plasmid annotation and aim to establish a
pipeline for the automatic identification and annotation of plasmids, that
should be inspired by the [Mitos](http://mitos2.bioinf.uni-leipzig.de) web
service for the specific annotation of mitochondrial genomes. An easy-to-use
workflow and a comprehensive visualization of the annotations will be crucial
parts.

