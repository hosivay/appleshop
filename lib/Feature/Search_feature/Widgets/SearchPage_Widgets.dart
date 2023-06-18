
 import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '../../../data/ProductCategory.dart';
import '../../Settings_feature/AppBarSettings.dart';
final TextEditingController _controller = TextEditingController(text: "");
// ignore: non_constant_identifier_names
CupertinoNavigationBar Appbar_SearchPage(BuildContext context) {
    return CupertinoNavigationBar(
        middle: CupertinoSearchTextField(
          controller: _controller,
        ),
        backgroundColor: CupertinoTheme.of(context)
            .barBackgroundColor
            .withOpacity(OpacityAppbar),
      );
  }

   // ignore: non_constant_identifier_names
   Widget GridWidget(int index) {
    return GridTile(
                  child: Bounceable(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 20,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ),
                                CachedNetworkImage(
                                  imageUrl:
                                      "${ProductCategory[index]["images"]}",
                                  width: 100,
                                  height: 100,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "${ProductCategory[index]["NameProduct"]}",
                                  style: const TextStyle(fontSize: 18)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
  }