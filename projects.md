---
layout: default
title: Projects
header: Projects
description: Where ideas come to life!
permalink: /projects/
---

{% for post in site.posts %}
  <p>
  {% if post.tags contains 'Project' %}
    <a href="{{ post.url }}">{{ post.title }}</a><br>
    {{ post.description }}<br>
    📅 {{ post.date | date: "%A, %B %-d %Y" }}
  {% endif %}</p>
{% endfor %}
