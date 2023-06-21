import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/ArticleData.dart';

class ViewArticlePage extends StatelessWidget {
  const ViewArticlePage(
      {super.key,  required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle:  Text(ArticleData[index]["title"] as String),
          backgroundColor:
              CupertinoTheme.of(context).barBackgroundColor.withOpacity(0.1),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 75,
              ),
             CachedNetworkImage(
               imageUrl:
              ArticleData[index]["imageUrl"] as String,
               ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ArticleData[index]["title"] as String,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              // ignore: avoid_unnecessary_containers
              Padding(
                padding: const EdgeInsets.all(8.0),
                // ignore: avoid_unnecessary_containers
                child: Container(
                    child: Text(
                ArticleData[index]["description"] as String,
                  style: TextStyle(
                      color:
                          CupertinoTheme.of(context).textTheme.textStyle.color,
                      fontSize: 17),
                )),
              ),
              const Text("Author : Hossein Valipour",style: TextStyle(fontStyle: FontStyle.italic),),
              const SizedBox(
                height: 120,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
