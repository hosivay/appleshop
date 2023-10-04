import 'package:appleshop/Feature/Article_feature/ArticlesPage.dart';
import 'package:appleshop/Feature/Settings_feature/SettingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'Feature/Home_feature/HomePage.dart';
import 'Feature/Search_feature/SearchPage.dart';
import 'Theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    // ignore: unused_local_variable
    bool isDark = brightnessValue == Brightness.dark;
    return CupertinoApp(
      title: 'Apple Shop',
      debugShowCheckedModeBanner: false,
      theme: themeData(isDark),
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        // Add other delegates as needed
      ],
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BottomNavigationBarItem> TapItemList = [
    const BottomNavigationBarItem(
        backgroundColor: Colors.white,
        activeIcon: Icon(CupertinoIcons.house_fill),
        icon: Icon(CupertinoIcons.house),
        label: 'Home'),
    const BottomNavigationBarItem(
        activeIcon: Icon(CupertinoIcons.search),
        icon: Icon(CupertinoIcons.search),
        label: 'Search'),
    const BottomNavigationBarItem(
        activeIcon: Icon(CupertinoIcons.collections_solid),
        icon: Icon(CupertinoIcons.collections),
        label: 'Article'),
    const BottomNavigationBarItem(
        activeIcon: Icon(CupertinoIcons.settings_solid),
        icon: Icon(CupertinoIcons.settings),
        label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          currentIndex: 0,
          backgroundColor:
              CupertinoTheme.of(context).barBackgroundColor.withOpacity(0.5),
          items: TapItemList),
      tabBuilder: (context, index) {
        late final CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const HomePage();
              },
            );
            break;
          case 1:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const SearchPage();
              },
            );
            break;
          case 2:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const ArticleListPage();
              },
            );
            break;
          case 3:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const SettingPage();
              },
            );
            break;
        }
        return returnValue;
      },
    );
  }
}
