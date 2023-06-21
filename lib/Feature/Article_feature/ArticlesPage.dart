import 'package:appleshop/data/ArticleData.dart';
import 'package:flutter/cupertino.dart';
import 'ArticleWidget.dart';
import 'Widgets/ArticlePage_Widgets.dart';

class ArticleListPage extends StatelessWidget {
  const ArticleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: Appbar_ArticlePage(context),
        child: ListView.builder(
          itemCount: ArticleData.length,
          itemBuilder: (BuildContext context, int index) {
            return ArticleWidget(
             index: index,
            );
          },
        ));
  }
}
