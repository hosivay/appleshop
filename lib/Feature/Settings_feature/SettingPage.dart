import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../data/UserData.dart';
import 'Widgets/SettingsPage_Widgets.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoTheme.of(context).barBackgroundColor,
        navigationBar: AppBar_SettingsPage(context),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade900,
                    backgroundImage: NetworkImage(UserData[0]["Profile"]!),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      UserData[0]["Name"]!,
                      style: TextStyle(
                          color: CupertinoTheme.of(context)
                              .textTheme
                              .textStyle
                              .color,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TopButton(
                      context: context,
                      title: "Profile",
                      icon: CupertinoIcons.person_circle,
                      onTap: () {}),
                  TopButton(
                      context: context,
                      title: "Orders",
                      icon: CupertinoIcons.cart,
                      onTap: () {}),
                  TopButton(
                      context: context,
                      title: "Save",
                      icon: CupertinoIcons.bookmark,
                      onTap: () {}),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              BorderItemSettingsRow1(context),
              const SizedBox(
                height: 10,
              ),
              BorderItemSettingsRow2(context),
              const SizedBox(
                height: 10,
              ),
              BorderItemSettingsRow3(context),
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        ));
  }
}
