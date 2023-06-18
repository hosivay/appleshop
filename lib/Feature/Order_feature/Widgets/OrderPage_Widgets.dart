
  import 'package:flutter/cupertino.dart';

import '../../Settings_feature/AppBarSettings.dart';

CupertinoNavigationBar Appbar_OrderPage(BuildContext context) {
    return CupertinoNavigationBar(
        middle: const Text('Orders'),
     backgroundColor: CupertinoTheme.of(context).barBackgroundColor.withOpacity(OpacityAppbar),
      );
  }