---
title: Recent Posts
header: "~"
description: Cameron Dugan's Website
layout: default
---

{% assign all_posts = site.posts | where_exp: "post", "post.tags.first != 'project'" %}
{% assign posts = "" | split:"," %}

{% for post in all_posts %}
  {% unless post.tags contains "hidden" %}
    {% assign posts = posts | push:post %}
  {% endunless %}
{% endfor %}

# Blog Post #{{posts | size}}:
{% for post in posts limit: 1 %}
{% include post_card.html %}
{% endfor %}

---

{% assign projects = site.posts | where_exp: "post", "post.tags contains 'project'" %}
<p></p>
# Fun Project #{{projects | size}}:
{% for post in projects limit: 1 %}
{% include post_card.html %}
{% endfor %}
