import 'package:flutter/cupertino.dart';
import '../../data/ProductCategory.dart';
import 'Widgets/SearchPage_Widgets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: Appbar_SearchPage(context),
        // ignore: avoid_unnecessary_containers
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 30, 5, 0),
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Flexible(
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: List.generate(ProductCategory.length, (index) {
                  return GridWidget(index);
                }),
              ),
            ),
          ),
        ));
  }
}
