---
title: "Hölzer Lab - Publications"
layout: gridlay
excerpt: "Hölzer Lab: Publications"
sitemap: false
permalink: /publications/
---

## Publications

This list is also available on [Google Scholar](https://scholar.google.de/citations?user=DMZ7Hc8AAAAJ) and under [ORCID](https://orcid.org/0000-0001-7090-8717).

### Submitted journal publications & preprints  

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

### Peer Reviewed

{% for publi in site.data.publist %}

  {% if publi.preprint == 0 %}
    {% if publi.book == 0 %}
    {% if publi.submitted == 0 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}}){% if publi.supp != 0 %}, <a href="{{ publi.supp }}">supplement</a> {% endif %}
  {% endif %}  
  {% endif %}
  {% endif %}
  
{% endfor %}

### Book Chapter

{% for publi in site.data.publist %}

  {% if publi.book == 1 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}})
  {% endif %}

{% endfor %}