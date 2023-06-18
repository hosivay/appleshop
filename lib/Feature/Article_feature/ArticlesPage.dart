import 'package:flutter/cupertino.dart';
import 'ArticleWidget.dart';
import 'Widgets/ArticlePage_Widgets.dart';

class ArticleListPage extends StatelessWidget {
  const ArticleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: Appbar_ArticlePage(context),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 60,
              ),
              ArticleWidget(
                imageUrl:
                    "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-model-unselect-gallery-2-202209_GEO_US?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1660753617560",
                leading: "",
                title: "iPhone 14 Pro",
                description:
                    "Safari extension, Focus, notification summary and more.",
              ),
              ArticleWidget(
                imageUrl:
                    "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-model-unselect-gallery-2-202209_GEO_US?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1660753617560",
                leading: "",
                title: "iPhone 14 Pro",
                description:
                    "Safari extension, Focus, notification summary and more.",
              ),
              ArticleWidget(
                imageUrl:
                    "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-model-unselect-gallery-2-202209_GEO_US?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1660753617560",
                leading: "",
                title: "iPhone 14 Pro",
                description:
                    "Safari extension, Focus, notification summary and more.",
              ),
              ArticleWidget(
                imageUrl:
                    "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-model-unselect-gallery-2-202209_GEO_US?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1660753617560",
                leading: "",
                title: "iPhone 14 Pro",
                description:
                    "Safari extension, Focus, notification summary and more.",
              ),
            ],
          ),
        ));
  }

 
}
