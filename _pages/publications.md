---
title: "Hölzer Lab - Publications"
layout: gridlay
excerpt: "Hölzer Lab: Publications"
sitemap: false
permalink: /publications/
---

## Publications

This list is also available on [Google Scholar](https://scholar.google.de/citations?user=DMZ7Hc8AAAAJ) and under [ORCID](https://orcid.org/0000-0001-7090-8717).

<ul>
<li><a href="#preprints">Preprints</a></li>
<li>Peer reviewed</li>
<ul>
<li><a href="#transcriptomics">Transcriptomics & gene expression analysis</a></li>
<li><a href="#genomics">Genomics & metagenomics</a></li>
<li><a href="#viruses">Viruses</a></li>
<li><a href="#tools">Bioinformatic tools & workflows</a></li>
<li><a href="#misc">Other interesting stuff</a></li>
</ul>
<li><a href="#books">Book chapter</a></li>
<li><a href="#acknow">Publications with acknowledgement</a></li>
</ul>

### Submitted journal publications & preprints  
<a name="preprints">

{% for publi in site.data.publist %}

{% if publi.submitted == 2 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}}){% if publi.supp != 0 %}, <a href="{{ publi.supp }}">supplement</a> {% endif %}  
{% endif %}

{% if publi.submitted == 1 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  {{ publi.link.display }} ({{publi.year}}){% if publi.supp != 0 %}, <a href="{{ publi.supp }}">supplement</a> {% endif %}
{% endif %}

{% endfor %}

### Peer reviewed

<!--TRANSCRIPTOMICS-->
<a name="transcriptomics">
  <h4>Transcriptomics</h4>
{% for publi in site.data.publist %}

  {% if publi.preprint == 0 %}
    {% if publi.book == 0 %}
    {% if publi.submitted == 0 %}
    {% if publi.acknow == 0 %}
    {% if publi.section == 1 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}}){% if publi.supp != 0 %}, <a href="{{ publi.supp }}">supplement</a> {% endif %}
  {% endif %}  
  {% endif %}
  {% endif %}
  {% endif %}
  {% endif %}
  
{% endfor %}

<!--GENOMICS-->
<a name="genomics">
  <h4>Genomics & metagenomics</h4>
{% for publi in site.data.publist %}

  {% if publi.preprint == 0 %}
    {% if publi.book == 0 %}
    {% if publi.submitted == 0 %}
    {% if publi.acknow == 0 %}
    {% if publi.section == 2 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}}){% if publi.supp != 0 %}, <a href="{{ publi.supp }}">supplement</a> {% endif %}
  {% endif %}  
  {% endif %}
  {% endif %}
  {% endif %}
  {% endif %}
  
{% endfor %}

<!--VIRUSES-->
<a name="viruses">
  <h4>Viruses</h4>
{% for publi in site.data.publist %}

  {% if publi.preprint == 0 %}
    {% if publi.book == 0 %}
    {% if publi.submitted == 0 %}
    {% if publi.acknow == 0 %}
    {% if publi.section == 3 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}}){% if publi.supp != 0 %}, <a href="{{ publi.supp }}">supplement</a> {% endif %}
  {% endif %}  
  {% endif %}
  {% endif %}
  {% endif %}
  {% endif %}
  
{% endfor %}

<!--TOOLS-->
<a name="tools">
  <h4>Bioinformatic tools & workflows</h4>
{% for publi in site.data.publist %}

  {% if publi.preprint == 0 %}
    {% if publi.book == 0 %}
    {% if publi.submitted == 0 %}
    {% if publi.acknow == 0 %}
    {% if publi.section == 4 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}}){% if publi.supp != 0 %}, <a href="{{ publi.supp }}">supplement</a> {% endif %}
  {% endif %}  
  {% endif %}
  {% endif %}
  {% endif %}
  {% endif %}
  
{% endfor %}


<!--MISC-->
<a name="misc">
  <h4>Other</h4>
{% for publi in site.data.publist %}

  {% if publi.preprint == 0 %}
    {% if publi.book == 0 %}
    {% if publi.submitted == 0 %}
    {% if publi.acknow == 0 %}
    {% if publi.section == 0 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}}){% if publi.supp != 0 %}, <a href="{{ publi.supp }}">supplement</a> {% endif %}
  {% endif %}  
  {% endif %}
  {% endif %}
  {% endif %}
  {% endif %}
  
{% endfor %}

<a name="books">
### Book chapter

{% for publi in site.data.publist %}

  {% if publi.book == 1 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}})
  {% endif %}

{% endfor %}

<a name="acknow">
### Publications with acknowledgement

{% for publi in site.data.publist %}

  {% if publi.acknow == 1 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}}){% if publi.supp != 0 %}, <a href="{{ publi.supp }}">supplement</a> {% endif %}
  {% endif %}  
  
{% endfor %}