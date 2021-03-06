---
title: "Hölzer Lab - Tools"
layout: gridlay
excerpt: "Hölzer Lab: Tools"
sitemap: flase
permalink: /tools/
---

## Tools



<div class="row"><div class="col-sm-6 clearfix">

### RNAflow

A simple RNA-Seq differential gene expression pipeline using Nextflow.

- [Source code @GitHub](https://github.com/hoelzer-lab/rnaflow)
<!--- [Publication]()-->

The pipeline needs only [Nextflow](https://www.nextflow.io/) and [Docker](https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce) or [Conda](https://docs.conda.io/en/latest/miniconda.html) installed. For a test run, please try:

<code>
nextflow run hoelzer-lab/rnaflow -r v1.1.0 -profile test,local,docker
</code>

Please see the [GitHub](https://github.com/hoelzer-lab/rnaflow) page for more detailed instructions and examples on how to use RNAflow.

</div><div class="col-sm-6 clearfix">
[![RNAflow logo](/assets/tools/rnaflow.png)](/assets/tools/rnaflow.png)
</div></div>




<div class="row"><div class="col-sm-6 clearfix">

### RIBAP

**R**oary **I**LP **B**acterial **A**nnotation **P**ipeline

(This tool is currently under heavy development, so expect some bugs but feel free to [report issues](https://github.com/hoelzer-lab/ribap/issues))

- [Source code @GitHub](https://github.com/hoelzer-lab/ribap)

The pipeline needs only [Nextflow](https://www.nextflow.io/) and [Docker](https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce) or [Conda](https://docs.conda.io/en/latest/miniconda.html) installed:

<code>
nextflow run hoelzer-lab/ribap --fasta '*.fasta' --outdir ~/ribap_out
</code>

Please see the [GitHub](https://github.com/hoelzer-lab/ribap) page for more detailed instructions and examples.

</div><div class="col-sm-6 clearfix">
[![RIBAP example output](/assets/tools/upsetr.svg)](/assets/tools/upsetr.svg)
</div></div>



<div class="row"><div class="col-sm-6 clearfix">

### PoSeiDon

**Po**sitive **Se**lect**i**on **D**etecti**on** and recombination analysis of protein-coding genes.

- [Source code @GitHub](https://github.com/hoelzer/poseidon)
- [Preprint @bioRxiv](https://www.biorxiv.org/content/10.1101/2020.05.18.102731v1)
- [App Note @Bioinformatics](https://doi.org/10.1093/bioinformatics/btaa695)

PoSeiDon now runs w/ [Nextflow](https://www.nextflow.io/) and [Docker](https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce):

<code>
nextflow run hoelzer/poseidon --help
</code>

Please see the [GitHub](https://github.com/hoelzer/poseidon) page for more detailed instructions and examples.

</div><div class="col-sm-6 clearfix">
<!--[![PoSeiDon logo](/assets/tools/poseidon.png)](http://www.rna.uni-jena.de/en/poseidon)-->
<!--<div align="right">[<img src="/assets/tools/poseidon.svg" width="220px">](http://www.rna.uni-jena.de/en/poseidon)-->
<div align="right"><a href="https://github.com/hoelzer/poseidon"><img src="/assets/tools/poseidon.svg" width="220px"></a>
</div></div></div>



<div class="row"><div class="col-sm-6 clearfix">

### PCAGO

Interactive web service that allows analysis of RNA-Seq read count data with [PCA](https://towardsdatascience.com/a-step-by-step-explanation-of-principal-component-analysis-b836fb9c97e2) and clustering.

- [Go to web server](https://pcago.bioinf.uni-jena.de/)
- [Source code @GitHub](https://github.com/hoelzer-lab/pcago)
- [Run PCAGO as standalone desktop application using the Electron framework](https://github.com/hoelzer-lab/pcago/tree/master/src-electron)
- __Recommendation__: run PCAGO locally using Docker (thx Lasse!)

</div><div class="col-sm-6 clearfix">
[![PCAGO Logo](/assets/tools/pcago.png)](https://pcago.bioinf.uni-jena.de/)
</div></div>

We recommend to use [Docker](https://www.docker.com/) to run PCAGO on your local machine. If Docker is installed on your system, simply run:

<code>
docker run -p 8000:8000 --rm -it mhoelzer/pcago:1.0--c1e506c ./run_packrat.sh
</code>

Depending on your system permissions you might need to add <code>--user $(id -u):$(id -g)</code> as a parameter.

If you execute the Docker image on a server, simply connect to this server with port forwarding (not needed on your local machine):

<code>
ssh -L 8000:127.0.0.1:8000 your@your.server.com
</code>

In both cases you will then be able to access PCAGO via the following address in your browser: 127.0.0.1:8000.

- [Preprint @bioRxiv](https://doi.org/10.1101/433078)



<div class="row"><div class="col-sm-6 clearfix">

### SIM

SilentMutations (SIM) automatically constructs disrupting and restoring synonymous (silent) mutation pairs within coding regions for combinatorial _in silico_ analysis of (viral) RNA-RNA interactions.

- [Source code @GitHub](https://github.com/desiro/silentMutations)
- [Publication @VirusResearch](https://doi.org/10.1016/j.virusres.2018.11.005)

</div><div class="col-sm-6 clearfix">
[![PCAGO Logo](/assets/tools/sim.png)](https://github.com/desiro/silentMutations)
</div></div>


