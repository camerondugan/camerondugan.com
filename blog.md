---
layout: default
title: Blog
header: Blog
description: Thoughts and Projects in Tech!
permalink: /blog/
---

{% assign posts = site.posts | where_exp: "post", "post.tags.first != 'project'" %}
{% for post in posts %}
  {% unless post.tags contains 'hidden' %}
  <p style="text-align:left;">
    <b><a href="{{ post.url }}">{{ post.title }}</a></b>
    <span style="float:right;">
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
    </span>
  </p>
  {{post.description}}
  <br>
  > {{ post.content | markdownify | strip | truncatewords: 35 }}
  {% if post.title != posts.last.title %}
  ___
  {% endif %}
{% endunless %}
{% endfor %}
