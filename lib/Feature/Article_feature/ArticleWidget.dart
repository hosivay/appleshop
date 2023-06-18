import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import 'ViewArticle.dart';

class ArticleWidget extends StatelessWidget {
  final String imageUrl;
  final String leading;
  final String title;
  final String description;

  const ArticleWidget({
    Key? key,
    required this.imageUrl,
    required this.leading,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 35),
      child: Bounceable(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (context) {
              return  ViewArticlePage(title: title,urlImage: imageUrl,);
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
                  child:CachedNetworkImage(
               imageUrl:
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 500,
                  ),
                ),
                // Positioned(
                //   top: 0,
                //   left: 0,
                //   right: 0,
                //   child: Container(
                //     width: 100,
                //     height: 100,
                //     decoration:  BoxDecoration(
                //       gradient: LinearGradient(
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //         colors: [
                //             Colors.grey.shade900.withOpacity(0.4),
                //            Colors.white.withOpacity(0.0),
                //            Colors.white.withOpacity(0.0),
                //           ],
                //       ),
                //     ),
                //   ),
                // ),
                //     Positioned(
                //   bottom: 0,
                //   left: 0,
                //   right: 0,
                //   child: Container(
                //     width: 100,
                //     height: 100,
                //     decoration:  BoxDecoration(
                //       gradient: LinearGradient(
                //         begin: Alignment.topCenter,
                //         end: Alignment.bottomCenter,
                //         colors: [
                //            Colors.white.withOpacity(0.0),
                //            Colors.white.withOpacity(0.0),
                //           Colors.grey.shade900.withOpacity(0.4),

                //           ],
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  height: 400,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 18,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   leading.toUpperCase(),
                      //   style: TextStyle(
                      //     color: Colors.grey[300],
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      // ),
                      const SizedBox(height: 5),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        description,
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
