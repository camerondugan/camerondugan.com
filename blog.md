---
layout: default
title: Blog
header: Blog
description: Where the magic happens - this is the blog!
permalink: /blog/
---

{% for post in site.posts %}
  <p><a href="{{ post.url }}">{{ post.title }}</a><br>
  {{ post.description }}<br>
  📅 {{ post.date | date: "%A, %B %-d %Y" }}</p>
{% endfor %}
