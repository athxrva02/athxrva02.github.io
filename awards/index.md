---
layout: default
title: "Awards & Certifications — Atharva Dagaonkar"
---

## Awards & Certifications

### Awards

<table class="teaching-table" style="margin-top:0.5rem;margin-bottom:2rem;">
  <tbody>
    {% for a in site.data.awards %}{% if a.type == 'award' %}
    <tr>
      <td><span class="fa-solid fa-trophy" style="color:var(--accent);"></span></td>
      <td>{{ a.name }}</td>
    </tr>
    {% endif %}{% endfor %}
  </tbody>
</table>

### Certifications

<table class="teaching-table" style="margin-top:0.5rem;">
  <tbody>
    {% for a in site.data.awards %}{% if a.type == 'certification' %}
    <tr>
      <td><span class="fa-solid fa-certificate" style="color:var(--accent);"></span></td>
      <td>{{ a.name }}</td>
    </tr>
    {% endif %}{% endfor %}
  </tbody>
</table>
