---
title: "Hölzer Lab - Publications"
layout: gridlay
excerpt: "Hölzer Lab: Publications"
sitemap: false
permalink: /publications/
---

## Publications

This list is also available on [Google Scholar](https://scholar.google.de/citations?user=DMZ7Hc8AAAAJ) and under [ORCID](https://orcid.org/0000-0001-7090-8717).

### Peer Reviewed

{% for publi in site.data.publist %}

  {% if publi.preprint == 0 %}
    {% if publi.book == 0 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}})
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
