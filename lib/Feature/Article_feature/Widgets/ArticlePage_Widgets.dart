 import 'package:flutter/cupertino.dart';

import '../../Settings_feature/AppBarSettings.dart';

// ignore: non_constant_identifier_names
CupertinoNavigationBar Appbar_ArticlePage(BuildContext context) {
    return CupertinoNavigationBar(
        middle: const Text('Orders'),
        backgroundColor: CupertinoTheme.of(context).barBackgroundColor.withOpacity(OpacityAppbar),
      );
  }