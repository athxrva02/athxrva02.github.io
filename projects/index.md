---
layout: default
title: "Projects — Atharva Dagaonkar"
---

## Projects

<div class="row" style="margin-top:1rem;">
{% for p in site.data.projects %}
<div class="col-md-6 mb-4">
<div class="project-card-full">
  <div class="project-card-header">
    <span class="fa-solid fa-code-branch project-card-icon"></span>
    <strong class="project-card-name">{{ p.name }}</strong>
    <a href="{{ p.github }}" class="project-card-github" target="_blank" rel="noopener">
      <span class="fa-brands fa-github"></span> GitHub
    </a>
  </div>
  <p class="project-card-brief">{{ p.brief }}</p>
</div>
</div>
{% endfor %}
</div>
