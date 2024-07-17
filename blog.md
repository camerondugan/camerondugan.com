---
layout: default
title: Blog
header: Blog
description: Software iz cool
permalink: /blog
---

{% assign posts = site.posts | where_exp: "post", "post.tags.first != 'project'" %}

{% for post in posts %}
{% include post_card.html %}
{% if post.title != posts.last.title %}
___
{% endif %}
{% endfor %}
