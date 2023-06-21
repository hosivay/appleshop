import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '../../data/ArticleData.dart';
import 'ViewArticle.dart';

class ArticleWidget extends StatelessWidget {
  final int index;

  const ArticleWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 35),
      child: Bounceable(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (context) {
              return ViewArticlePage(
                index: index,
              );
            },
          ));
        },
        child: PhysicalModel(
          color: Colors.black,
          borderRadius: BorderRadius.circular(14),
          elevation: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Stack(
              children: [
                Positioned.fill(
                  child: CachedNetworkImage(
                    imageUrl: ArticleData[index]["imageUrl"] as String,
                    fit: BoxFit.cover,
                    height: 500,
                  ),
                ),
                Container(
                  height: 400,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 18,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                 
                      const SizedBox(height: 5),
                      Text(
                        ArticleData[index]["title"] as String,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        ArticleData[index]["description"].toString().substring(0, 100),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
