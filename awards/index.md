---
layout: default
title: "Awards & Certifications — Atharva Dagaonkar"
---

## Awards & Certifications

### Awards

<ul class="recognition-list">
  {% for a in site.data.awards %}{% if a.type == 'award' %}
  <li class="recognition-item">
    <span class="fa-solid fa-trophy recognition-icon" aria-hidden="true"></span>
    <div>
      <strong class="recognition-name">{{ a.name }}</strong>
      {% if a.detail %}<div class="recognition-detail">{{ a.detail }}</div>{% endif %}
    </div>
  </li>
  {% endif %}{% endfor %}
</ul>

### Certifications

<ul class="recognition-list">
  {% for a in site.data.awards %}{% if a.type == 'certification' %}
  <li class="recognition-item">
    <span class="fa-solid fa-certificate recognition-icon" aria-hidden="true"></span>
    <div>
      <strong class="recognition-name">{{ a.name }}</strong>
      {% if a.detail %}<div class="recognition-detail">{{ a.detail }}</div>{% endif %}
    </div>
  </li>
  {% endif %}{% endfor %}
</ul>
