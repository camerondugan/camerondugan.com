---
layout: default
title: Blog
header: Blog
description: Software iz cool
permalink: /blog/
---

{% assign all_posts = site.posts | where_exp: "post", "post.tags.first != 'project'" %}
{% assign posts = "" | split:"," %}

{% for post in all_posts %}
  {% unless post.tags contains "hidden" %}
    {% assign posts = posts | push:post %}
  {% endunless %}
{% endfor %}

{% for post in posts %}
  <h2><b>
    <a href="{{ post.url }}">
      {{ post.title }}
    </a>
  </b></h2>
  <p style="text-align:left;">
    <code>{{post.description}}</code>
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
  {% if post.title != posts.last.title %}
  ___
  {% endif %}
{% endfor %}
