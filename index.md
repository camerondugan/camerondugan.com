---
title: Home
header: "~"
description: Cameron Dugan's Website
layout: default
---

{% assign posts = site.posts | where_exp: "post", "post.tags.first != 'project'" %}
### Blog Post #{{posts | size}}:
---
{% for post in posts limit: 1 %}
  <b><a href="{{ post.url }}">{{ post.title }}</a></b>
  <p style="text-align:left;">
    {{ post.description }}
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
  > {{ post.content | markdownify | strip | truncatewords: 35}}
{% endfor %}
---

<br>

{% assign projects = site.posts | where_exp: "post", "post.tags contains 'project'" %}
### Fun Project #{{projects | size}}:
---
{% for post in projects limit: 1 %}
  <b><a href="{{ post.url }}">{{ post.title }}</a></b>
  <p style="text-align:left;">
    {{ post.description }}
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
  > {{ post.content | markdownify | strip | truncatewords: 35}}
{% endfor %}