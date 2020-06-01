---
title: "Full publication list"
id: publications
---

{% for year in (2000..2030) reversed %}

  {% capture bib_entries %}{% bibliography --query @*[year = {{year}}] %}{% endcapture %}
  {% if  bib_entries.size > 90  %}
  <h2> {{ year }} </h2>
  {{ bib_entries }}
  {% endif %}
{% endfor %}
