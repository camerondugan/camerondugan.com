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
{% include post_card.html %}
{% if post.title != posts.last.title %}
___
{% endif %}
{% endfor %}
