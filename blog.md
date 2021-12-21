---
layout: default
title: Blog
header: Blog
description: Thoughts and Projects in Tech!
permalink: /blog/
---

{% for post in site.posts %}
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
  {% if post.title != site.posts.last.title %}
  ___
  {% endif %}
{% endfor %}
