import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';

const List<Map<String, Object>> SettingsItemData1 = [
  {
    "title": "Dark Mode",
    "icon": CupertinoIcons.moon,
    "rightWidget": Text(
      "Auto",
      style: TextStyle(color: Colors.grey),
    )
  },
];

// ignore: constant_identifier_names
const List<Map<String, Object>> SettingsItemData2 = [
  {
    "title": "Telegram",
    "icon": CupertinoIcons.bubble_left_bubble_right,
    "Url": "https://t.me/hosivay"
  },
  {
    "title": "Instagram",
    "icon": CupertinoIcons.at,
     "Url": "https://instagram.com/hosivay"
  },
  {
    "title": "GitHub",
    "icon": CupertinoIcons.bolt,
     "Url": "https://github.com/hosivay"
  },
];

// ignore: constant_identifier_names
const List<Map<String, Object>> SettingsItemData3 = [
  {
    "title": "Developer : Hosivay",
    "icon": CupertinoIcons.wand_stars,
    "rightWidget": Text(
      "",
    )
  },
  {
    "title": "Version : $Version",
    "icon": CupertinoIcons.info,
    "rightWidget": Text(
      "",
    )
  },
];
