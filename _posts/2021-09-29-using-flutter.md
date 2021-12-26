---
title: Using Flutter
header: Succulent Flutter App
description: Making a cross platform app with Flutter
permalink: /blog/using-flutter/
layout: post
tags: Project
---

[![plant](/assets/images/succulent/Plant.png){: width="200"}](/assets/images/succulent/Plant.png)

## Lessons:

- Find widgets on [pub.dev](https://Pub.dev) that fit your project and are *null safe*, *null safety* makes your project better and inherently compatible with other *null safe* projects.
    - Learn more about *null safety* here: [dart.dev](https://dart.dev/null-safety/understanding-null-safety)
- Using ```flutter clean``` is your friend
    - Builds occassionally don't work for no real reason. If this is the case, you can always run the clean command to potentially fix issues.
    - If this doesn't work, you can build it to a different platform/os then back to the original platform.
- To my knowledge, you cannot use widgets to communicate with other widgets, I can't say: 
```dart
childWidget()
    build() 
        return widget(
            onTap: () {
                parentWidget.add(item);
                setState(){};
```
but I can say: 
```dart
//this is psuedo code
parentWidget(){
    mylist = []; 

    Widget childWidget(list){
        return widget(
            onTap: () {
                mylist.add("hello")
                setState(){};
            }
    }

    build() => childWidget(mylist);
}
```
- When using the scaffold widget to make the app, you want to use an indexed stack if you want to also use an animated navigation bar, to let the animation play out, instead of getting cut off when switching contexts.

I'll add binaries to this page shortly, see you next time!
