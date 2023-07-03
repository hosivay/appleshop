import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoThemeData themeData(bool isDark) {
  return CupertinoThemeData(
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(
            fontFamily: 'emoji', color: isDark ? Colors.white : Colors.black),
      ),
      barBackgroundColor: isDark ? Colors.black : Colors.grey.shade200,
      applyThemeToAll: true,
      brightness: isDark ? Brightness.dark : Brightness.light,
      primaryColor: Colors.blue.shade700);
}
