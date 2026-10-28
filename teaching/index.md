---
layout: default
title: "Atharva Dagaonkar | Teaching"
---


##### Teaching Experience

<br>

{% for institution in site.data.teaching %}
{% assign courses_with_period = institution.courses | where_exp: "course", "course.period != nil" %}
{% assign courses_with_years = institution.courses | where_exp: "course", "course.start_year != nil" %}
<h5>{{ institution.institution }}</h5>
<table class="teaching-table">
  <thead>
    <tr>
      <th>Course</th>
      <th>Role</th>
      {% if courses_with_period.size > 0 %}<th>Period</th>{% endif %}
      {% if courses_with_years.size > 0 %}<th>Years</th>{% endif %}
      <th>Level</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    {% for course in institution.courses %}
    <tr>
      <td>{% if course.link %}<a href="{{ course.link }}">{{ course.name }}</a>{% else %}{{ course.name }}{% endif %}</td>
      <td>{{ course.role }}</td>
      {% if courses_with_period.size > 0 %}<td>{{ course.period }}</td>{% endif %}
      {% if courses_with_years.size > 0 %}<td>{% if course.start_year %}{% if course.end_year == course.start_year %}{{ course.start_year }}{% elsif course.end_year %}{{ course.start_year }}–{{ course.end_year }}{% else %}{{ course.start_year }}–present{% endif %}{% endif %}</td>{% endif %}
      <td>{% if course.level == "MSc" %}<span class="fa-solid fa-user-graduate"></span>{% elsif course.level == "BSc" %}<span class="fa-solid fa-graduation-cap"></span>{% elsif course.level == "ProfEd" %}<span class="fa-solid fa-briefcase"></span>{% endif %} {{ course.level }}</td>
      <td>{{ course.description }}{% if course.collaborator_name %} · with <a href="{{ course.collaborator_link }}">{{ course.collaborator_name }}</a>{% endif %}</td>
    </tr>
    {% endfor %}
  </tbody>
</table>
<br/>
{% endfor %}
