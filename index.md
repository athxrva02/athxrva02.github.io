---
layout: default
title: "Atharva Dagaonkar | SWE Intern, Google | MSc Computer Science, TU Delft"
---

<!-- Hero -->
<div id="top" class="row align-items-start">
<div class="col-sm-8">

<p class="lead lead-xl"><strong>
MSc Computer Science at <a href="https://www.tudelft.nl/">TU Delft</a> and SWE Intern at <a href="https://www.google.com/">Google</a> (Munich).</strong>
</p>

<p>
I work on research in differential privacy and reverse engineering at Google. Previously I was an AI Engineer Intern at Rabobank, working on multi agent systems. Before starting my masters, I was a team lead and full-stack software engineer at ARRISE, specializing in Java with Angular and React, with experience in scalable architecture, agile delivery, and test-driven development. I hold the AWS Solutions Architect – Associate certification.<br/> <br/> Earlier roles include research and engineering internships at the National University of Singapore, the University of Auckland, Samsung R&amp;D, and Hewlett Packard Enterprise. I received my Bachelor of Technology in Computer Science from Vellore Institute of Technology (2020–2024) and am pursuing my MSc at TU Delft (2025–2027). I have published on inventory management in augmented reality using Apple ARKit for visionOS.
</p>

<h5 style="margin-top:1.4rem;">Career timeline</h5>
<div class="timeline">
{% for item in site.data.timeline %}
  <div class="timeline-item{% if item.upcoming %} upcoming{% endif %}">
    <div class="timeline-year">{{ item.year }}</div>
    <div class="timeline-dot{% if item.current %} current{% elsif item.upcoming %} upcoming{% endif %}"></div>
    <div class="timeline-body">
      <!-- <span class="{{ item.icon }} timeline-icon"></span> -->
      <strong>{{ item.title }}</strong>{% if item.upcoming %}<span class="timeline-upcoming-badge">upcoming</span>{% endif %} &mdash; {% if item.org_domain %}<img src="https://img.logo.dev/{{ item.org_domain }}?token={{ site.data.env.logo_dev_token }}&size=40&format=png" class="timeline-org-logo" alt="{{ item.org }}" onerror="this.style.display='none'">{% endif %}{{ item.org }}
      {% if item.detail %}<div class="timeline-detail">{{ item.detail }}</div>{% endif %}
    </div>
  </div>
{% endfor %}
</div>

</div>
<div class="col-md-4">
<div class="profile-card">
  <img src="assets/atharva.jpeg" class="profile-photo" alt="Atharva Dagaonkar">
  <div class="profile-divider"></div>
  <div class="profile-contact">
    <div class="profile-contact-item">
      <span class="fa-solid fa-envelope profile-contact-icon"></span>
      <a href="mailto:dagaonkaratharva@gmail.com">dagaonkaratharva@gmail.com</a>
    </div>
    <div class="profile-contact-item">
      <span class="fa-solid fa-location-dot profile-contact-icon"></span>
      <span>Delft, South Holland, Netherlands</span>
    </div>
  </div>
  <div class="profile-divider"></div>
  <div class="profile-socials">
    <a href="https://www.linkedin.com/in/atharva-dagaonkar"><span class="fa-brands fa-linkedin"></span> LinkedIn</a>
    <a href="https://github.com/athxrva02"><span class="fa-brands fa-github"></span> GitHub</a>
  </div>
</div>
</div>
</div>


<!-- Focus Areas -->
<div id="research" class="row" style="padding-top: 1rem;">
<div class="col-12"><h5>Focus areas</h5></div>

<div class="col-md-4 mb-3">
<div class="research-card">
  <div class="card-icon"><span class="fa-solid fa-robot"></span></div>
  <h6>Agentic AI &amp; automation</h6>
  <p class="small text-muted mb-0">LangChain-style orchestration, production AI systems, and R&amp;D for large-scale data processing in enterprise settings.</p>
</div>
</div>

<div class="col-md-4 mb-3">
<div class="research-card">
  <div class="card-icon"><span class="fa-solid fa-brain"></span></div>
  <h6>ML &amp; reinforcement learning</h6>
  <p class="small text-muted mb-0">Deep reinforcement learning and classical ML for real-world problems; prior work in vision, AR, and analytics.</p>
</div>
</div>

<div class="col-md-4 mb-3">
<div class="research-card">
  <div class="card-icon"><span class="fa-solid fa-server"></span></div>
  <h6>Scalable Distributed systems &amp; cloud</h6>
  <p class="small text-muted mb-0">High-throughput services (Java/Spring). Distributed Systems with high concurrency and fault tolerance. </p>
</div>
</div>

</div>
