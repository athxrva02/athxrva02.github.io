---
layout: default
title: "Short Bio — Atharva Dagaonkar"
---

##### Short Bio

Atharva Dagaonkar is an MSc student in Computer Science at [TU Delft](https://www.tudelft.nl/) and a SWE Intern at [Google](https://www.google.com/) in Utrecht. He works on research in data-intensive systems, with a current focus on agentic AI and reinforcement learning, and collaborates across Product, Security, and Data Engineering to productionize high-performance AI systems.

Previously he was a full-stack software engineer at ARRISE (Hyderabad), specializing in Java (including Java 17 and Spring Boot) with Angular and React. He has experience architecting services for high concurrency and throughput, API design, migration planning, test-driven development, and technical interviewing and team leadership. He holds the AWS Solutions Architect – Associate certification.

His internships include research and engineering roles at the National University of Singapore, the University of Auckland, Samsung R&amp;D (PRISM), and Hewlett Packard Enterprise. He received his B.Tech in Computer Science from [Vellore Institute of Technology](https://vit.ac.in/) (2020–2024) and is completing his MSc at TU Delft (2025–2027). He has published on inventory management in augmented reality using Apple ARKit for visionOS.

He was awarded Star of the Quarter at ARRISE (September 2024) for Q3 2024 performance.


##### Career Timeline

<div class="timeline">
{% for item in site.data.timeline %}
  <div class="timeline-item{% if item.upcoming %} upcoming{% endif %}">
    <div class="timeline-year">{{ item.year }}</div>
    <div class="timeline-dot{% if item.current %} current{% elsif item.upcoming %} upcoming{% endif %}"></div>
    <div class="timeline-body">
      <span class="{{ item.icon }} timeline-icon"></span>
      <strong>{{ item.title }}</strong>{% if item.upcoming %}<span class="timeline-upcoming-badge">upcoming</span>{% endif %} &mdash; {% if item.org_domain %}<img src="https://img.logo.dev/{{ item.org_domain }}?token={{ site.data.env.logo_dev_token }}&size=40&format=png" class="timeline-org-logo" alt="{{ item.org }}" onerror="this.style.display='none'">{% endif %}{{ item.org }}
      {% if item.detail %}<div class="timeline-detail">{{ item.detail }}</div>{% endif %}
    </div>
  </div>
{% endfor %}
</div>
