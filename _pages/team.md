---
title: "Hölzer Lab - Team"
layout: gridlay
excerpt: "Hölzer Lab: Team members"
sitemap: false
permalink: /team/
---

## Team

{% assign number_printed = 0 %}
{% for member in site.data.team_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>{% if member.github != 0 %}
  <a target="_blank" href="{{ member.github }}/"><i class="fab fa-github" style="color:black; font-size:24px;"></i></a> {% endif %}{% if member.twitter != 0 %}<a target="_blank" href="{{ member.twitter }}/"><i class="fab fa-twitter" style="color:#0084b4; font-size:24px;"></i></a> {% endif %}{% if member.orcid != 0 %}<a target="_blank" href="{{ member.orcid }}/"> <i class="fas fa-dot-circle" style="color:#a6ce39;font-size:24px;"></i></a> {% endif %}{% if member.cv != 0 %}<a target="_blank" href="{{ site.url }}{{ site.baseurl }}{{ member.cv }}"> <i class="fas fa-file-pdf" style="color:#f45c42;font-size:22px;"></i></a>{% endif %}
  <br>
  <i>{{ member.info }}<br>email: <{{ member.email }}></i>
  <ul style="overflow: hidden">
  
  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}
  
  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}
  
  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}
  
  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}
  
  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<table align="center" class="table table-condensed">
<tr><th>Research assistants</th></tr>
<tr><td>Tassilo Dellnitz, since Spring 2017</td></tr>
</table>

### Alumni
<table align="center" class="table table-condensed">
<tr><th>Master Students</th> </tr>
<tr><td>Marie Lataretu, Summer 2018</td></tr>
<tr><td>Ruman Gerst, Fall 2017</td></tr>
</table>
<table align="center" class="table table-condensed">
<tr><th>Guest Scientists</th></tr>
<tr><td>Fabien Vorimore, Winter 2016 & 2017</td></tr>
</table>
<br>
<!--## Administrative Support
<a href="mailto:Rijsewijk@Physics.LeidenUniv.nl">Ellie van Rijsewijk</a> is helping us (and other groups) with administration.-->






