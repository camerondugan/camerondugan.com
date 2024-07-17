---
layout: default
title: Projects
header: Projects
description: Idea -> Plan -> Reality
permalink: /projects
---
{% assign posts = site.posts | where_exp: "post", "post.tags contains 'project'" %}

{% for post in posts limit: 50 %}
  {% include post_card.html%}
  {% if post.title != posts.last.title %}
  ___
  {% endif %}
{% endfor %}
