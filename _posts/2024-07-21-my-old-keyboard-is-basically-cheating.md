---
title: My Old Keyboard is Basically Cheating
description: A snippet of code for qmk users everywhere.
layout: post
category: blog
tags: hardware qmk keyboard
---

My old keyboard is basically cheating and so is [Razer's new keyboard](https://www.youtube.com/watch?v=Feny5bs2JCg).

This code mimics what Razer is calling:
[snap tap](https://www.razer.com/gb-en/technology/snap-tap-mode).
Which is essentially "null binds" from CSGO? Correct me if I'm wrong.

Here's how I reproduced a feature from a $180 gaming keyboard on my QMK
keyboard at home.

I don't like when others have an advantage I don't have in games. I don't use
this code when I play competitive games, but here's a
snippet of code you could add to any [QMK compatible
keyboard](https://browse.qmk.fm/#/).

{% highlight c %}
bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  static bool aHeld = false;
  static bool dHeld = false;
  switch (keycode) {
    case KC_A:
      aHeld = record->event.pressed;
      if (dHeld && aHeld) {
          unregister_code(KC_D);
      } else if (dHeld && !aHeld){
          unregister_code(KC_A);
          register_code(KC_D);
          return false; // don't send original key pressed
      }
      return true;
    case KC_D:
      dHeld = record->event.pressed;
      if (aHeld && dHeld) {
          unregister_code(KC_A);
      } else if (aHeld && !dHeld){
          unregister_code(KC_D);
          register_code(KC_A);
          return false; // don't send original key pressed
      }
      return true;
    default:
      return true; // Process all other keycodes normally
  }
}
{% endhighlight %}

Essentially it tells the computer you are holding the last pressed A or D key.
It is impossible to send the computer both because it releases the other one.

[This video](https://www.youtube.com/watch?v=Feny5bs2JCg) from optimum makes it
clear why this would be an advantage.

To use the code I've provided with your keyboard with QMK firmware, you need to
follow QMK firmware's tutorials: <https://docs.qmk.fm/newbs_getting_started>,
<https://docs.qmk.fm/newbs_building_firmware>, paste in my code into the bottom
of keymap.c, then follow <https://docs.qmk.fm/newbs_building_firmware>

Please be cautious and considerate of others, I am not responsible for bans
made against you.
