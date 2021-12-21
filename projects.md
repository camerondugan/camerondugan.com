---
layout: default
title: Projects
header: Projects
description: Idea -> Plan -> Reality
permalink: /projects/
---
{% assign posts = site.posts | where_exp: "post", "post.tags contains 'Project'" %}
{% for post in posts %}
  <p>
  📅 
  {% assign d = post.date | date: "%d" | plus:'0' %}
  {{ post.date | date: "%b" }} 
  {% case d %}
  {% when 1 or 21 or 31 %}{{ d }}st
  {% when 2 or 22 %}{{ d }}nd
  {% when 3 or 23 %}{{ d }}rd
  {% else %}{{ d }}th
  {% endcase %} 
  {{ post.date | date: "%Y" }}
  <br><br>
  <a href="{{ post.url }}">{{ post.title }}</a>
  <br>
  {{ post.description }}
  <br>
  {{ post.excerpt | truncatewords: 40 | markdownify}}
  </p>
  {% if post.title != posts.last.title %}
  ___
  {% endif %}
{% endfor %}
