import 'package:appleshop/Feature/Settings_feature/AppBarSettings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/SettingsData.dart';

CupertinoNavigationBar AppBar_SettingsPage(BuildContext context) {
  return CupertinoNavigationBar(
    middle: const Text('Settings'),
    backgroundColor: CupertinoTheme.of(context)
        .barBackgroundColor
        .withOpacity(OpacityAppbar),
  );
}

Widget TopButton(
    {required BuildContext context,
    required String title,
    required IconData icon,
    required Function() onTap}) {
  return Bounceable(
    onTap: onTap,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        color: CupertinoTheme.of(context).barBackgroundColor == Colors.black
            ? Colors.grey.shade800
            : Colors.white,
        width: MediaQuery.of(context).size.width / 3.9,
        height: MediaQuery.of(context).size.width / 4.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              size: 37,
              color: CupertinoTheme.of(context).textTheme.textStyle.color,
            ),
            Text(title)
          ],
        ),
      ),
    ),
  );
}

Widget ItemSettings(
    {required BuildContext context,
    required String title,
    required IconData icon,
    required Widget rightWidget,
    required bool isOnTap,
    String? url}) {
  return Material(
    color: CupertinoTheme.of(context).barBackgroundColor == Colors.black
        ? Colors.grey.shade800
        : Colors.white,
    child: InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        if (isOnTap) {
          final Uri _url = Uri.parse(url!);
          try {
            if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
              throw Exception('Could not launch $_url');
            }
          } catch (e) {
            print(e.toString());
          }
        }
      },
      child: Column(
        children: [
          Divider(
            color: CupertinoTheme.of(context).barBackgroundColor == Colors.black
                ? Colors.grey.shade800
                : Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
            child: Container(
              color:
                  CupertinoTheme.of(context).barBackgroundColor == Colors.black
                      ? Colors.grey.shade800
                      : Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 35,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                  child: Icon(
                    icon,
                    color: CupertinoTheme.of(context).textTheme.textStyle.color,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                      color:
                          CupertinoTheme.of(context).textTheme.textStyle.color,
                      fontSize: 15),
                ),
                const Spacer(),
                Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: rightWidget),
              ]),
            ),
          ),
          const Divider(),
        ],
      ),
    ),
  );
}

Widget BorderItemSettingsRow1(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: CupertinoTheme.of(context).barBackgroundColor == Colors.black
            ? Colors.grey.shade800
            : Colors.white,
        child: ItemSettings(
          context: context,
          icon: SettingsItemData1[0]["icon"] as IconData,
          title: SettingsItemData1[0]["title"] as String,
          isOnTap: false,
          rightWidget: SettingsItemData1[0]["rightWidget"] as Widget? ??
              const Icon(
                CupertinoIcons.arrow_right,
                size: 20,
              ),
        ),
      ),
    ),
  );
}

Widget BorderItemSettingsRow2(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: CupertinoTheme.of(context).barBackgroundColor == Colors.black
            ? Colors.grey.shade800
            : Colors.white,
        child: Column(
          children: [
            ItemSettings(
              context: context,
              icon: SettingsItemData2[0]["icon"] as IconData,
              title: SettingsItemData2[0]["title"] as String,
              isOnTap: true,
              url: SettingsItemData2[0]["Url"] as String,
              rightWidget: SettingsItemData2[0]["rightWidget"] as Widget? ??
                  Icon(
                    CupertinoIcons.arrow_right,
                    size: 20,
                    color: CupertinoTheme.of(context).textTheme.textStyle.color,
                  ),
            ),
            ItemSettings(
              context: context,
              icon: SettingsItemData2[1]["icon"] as IconData,
              title: SettingsItemData2[1]["title"] as String,
              isOnTap: true,
              url: SettingsItemData2[1]["Url"] as String,
              rightWidget: SettingsItemData2[1]["rightWidget"] as Widget? ??
                  Icon(
                    CupertinoIcons.arrow_right,
                    size: 20,
                    color: CupertinoTheme.of(context).textTheme.textStyle.color,
                  ),
            ),
            ItemSettings(
              context: context,
              icon: SettingsItemData2[2]["icon"] as IconData,
              title: SettingsItemData2[2]["title"] as String,
              isOnTap: true,
              url: SettingsItemData2[2]["Url"] as String,
              rightWidget: SettingsItemData2[2]["rightWidget"] as Widget? ??
                  Icon(
                    CupertinoIcons.arrow_right,
                    size: 20,
                    color: CupertinoTheme.of(context).textTheme.textStyle.color,
                  ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget BorderItemSettingsRow3(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: CupertinoTheme.of(context).barBackgroundColor == Colors.black
            ? Colors.grey.shade800
            : Colors.white,
        child: Column(
          children: [
            ItemSettings(
              context: context,
              icon: SettingsItemData3[0]["icon"] as IconData,
              title: SettingsItemData3[0]["title"] as String,
              isOnTap: false,
              rightWidget: SettingsItemData3[0]["rightWidget"] as Widget? ??
                  const Icon(
                    CupertinoIcons.arrow_right,
                    size: 20,
                  ),
            ),
            ItemSettings(
              context: context,
              icon: SettingsItemData3[1]["icon"] as IconData,
              title: SettingsItemData3[1]["title"] as String,
              isOnTap: false,
              rightWidget: SettingsItemData3[1]["rightWidget"] as Widget? ??
                  const Icon(
                    CupertinoIcons.arrow_right,
                    size: 20,
                  ),
            ),
          ],
        ),
      ),
    ),
  );
}
