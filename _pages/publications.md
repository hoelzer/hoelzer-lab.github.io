---
title: "Hölzer Lab - Publications"
layout: gridlay
excerpt: "Hölzer Lab: Publications"
sitemap: false
permalink: /publications/
---

# Publications

This list is also available on [Google Scholar](https://scholar.google.de/citations?user=DMZ7Hc8AAAAJ).

## Peer Reviewed

{% for publi in site.data.publist %}

  {% if publi.preprint == 0 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}})
  {% endif %}

{% endfor %}

## Book Chapter

{% for publi in site.data.publist %}

  {% if publi.book == 1 %}
  {{ publi.title }} <br />
  <em>{{ publi.authors }} </em><br />
  <a href="{{ publi.link.url }}">{{ publi.link.display }}</a> ({{publi.year}})
  {% endif %}

{% endfor %}
