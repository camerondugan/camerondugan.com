---
title: My Website Is Improving!
description: Working with liquid HTML
layout: post
permalink: /blog/website-improvements/
tags: code website progress
---

You might have noticed that posts now has a few extra little widgets and layout enhancements, and that's because you're right!

I've been working on improving the styling and layout for a little bit now, and I'm glad to be able to show them off.

* Because liquid html doesn't naturally have random number generators, I've created some code that very strongly mimics random. (Although reading the code it doesn't look like it should be random). It must be a bug in the generator, maybe it's pulling variables in the wrong order and getting modulo of null? Not sure, I'm just glad that it works.

* I've also changed the color scheme to work for both dark and light themes, (I had a bug with my navbar on light mode).

* The home page is no longer a blerb about myself, but a hub to recent posts

* Posts have links to other related posts! Adapted from [mishacreatix.com](https://www.mishacreatrix.com/jekyll-related-posts).

{% raw %}
```html
<h2>🪧 Enjoy Reading This?</h2>
<p>Here are some more you might like to read next:</p>
    
{% assign maxRelated = 3 %}
{% assign minCommonTags = 1 %}
{% assign maxRelatedCounter = 0 %}
    
<ul>
	{% for post in site.posts %}
    	{% assign sameTagCount = 0 %}
        {% assign commonTags = '' %}
    
		{% for tag in post.tags %}
        	{% if post.url != page.url %}
            	{% if page.tags contains tag %}
            	{% assign sameTagCount = sameTagCount | plus: 1 %}
            	{% endif %}
            {% endif %}
		{% endfor %}
    
        {% if sameTagCount >= minCommonTags %}
    		<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>

            {% assign maxRelatedCounter = maxRelatedCounter | plus: 1 %}
            {% if maxRelatedCounter >= maxRelated %}
                {% break %}
            {% endif %}
		{% endif %}
	{% endfor %}
	{% assign newestCount = maxRelated | minus: maxRelatedCounter %}
	{% for post in site.posts limit: newestCount %} 
    		<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
	{% endfor %}
		
</ul>
```
{% endraw %}

I knew how to do none of this a month ago, but now I can edit my website to statically generate a ton of stuff.