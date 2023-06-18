import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Order_feature/OrderPage.dart';
import '../Settings_feature/AppBarSettings.dart';

CupertinoSliverNavigationBar appBar_home(BuildContext context) {
    return CupertinoSliverNavigationBar(
          backgroundColor: CupertinoTheme.of(context)
              .barBackgroundColor
              .withOpacity(OpacityAppbar),
          largeTitle: const Text('Apple Shop'),
          middle: Padding(
            padding: const EdgeInsets.all(3.0),
            child: CachedNetworkImage(
              imageUrl:
                  "https://www.shareicon.net/data/256x256/2016/07/09/118236_apple_512x512.png",
              color: CupertinoTheme.of(context).barBackgroundColor ==
                      Colors.black
                  ? Colors.white
                  : Colors.black,
              width: 25,
              height: 25,
            ),
          ),
          trailing: CupertinoButton(
            child: Icon(CupertinoIcons.cart,
                color: CupertinoTheme.of(context).barBackgroundColor ==
                        Colors.black
                    ? Colors.white
                    : Colors.black,
                size: 25),
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) {
                  return const OrdersPage();
                },
              ));
            },
          ),
         
        );
  }