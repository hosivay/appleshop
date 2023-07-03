import 'package:animate_do/animate_do.dart';
import 'package:appleshop/Feature/Settings_feature/AppBarSettings.dart';
import 'package:appleshop/data/DetailProductData.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const ProductDetailPage(
      {super.key, required this.productName, required this.categoryProduct});

  final String productName;
  final String categoryProduct;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int? imageindex;

  @override
  void initState() {
    imageindex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers, non_constant_identifier_names
    List _GetProduct = getProduct(
        category: widget.categoryProduct, productName: widget.productName);
    String _GetPrice = getPriceProduct(
        category: widget.categoryProduct, productName: widget.productName);

    return CupertinoPageScaffold(
        backgroundColor: CupertinoTheme.of(context).barBackgroundColor,
        navigationBar: CupertinoNavigationBar(
          middle: Text(widget.productName),
          backgroundColor: CupertinoTheme.of(context)
              .barBackgroundColor
              .withOpacity(OpacityAppbar),
          trailing: const Icon(
            CupertinoIcons.bookmark,
            size: 22,
            color: Colors.blue,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 85,
              ),
              SlideInRight(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                      imageUrl: _GetProduct[imageindex!],
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.width/ 1.1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 600,
                  height: 100,
                  child: ListView.builder(
                      itemCount: _GetProduct.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return imageItems(context, index, _GetProduct);
                      }),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.productName,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: CupertinoTheme.of(context)
                              .textTheme
                              .textStyle
                              .color),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _GetPrice,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w100,
                          color: CupertinoTheme.of(context)
                              .textTheme
                              .textStyle
                              .color),
                    ),
                  ),
                  CupertinoButton.filled(
                      child: const Text("Buy"), onPressed: () {})
                ],
              ),
            ],
          ),
        ));
  }

  Widget imageItems(
      // ignore: no_leading_underscores_for_local_identifiers
      BuildContext context,
      int index,
      List<dynamic> GetProduct) {
    return Material(
      color: CupertinoTheme.of(context).barBackgroundColor,
      child: FadeIn(
        child: InkWell(
          onTap: () {
            imageindex = index;
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: SizedBox(
              height: 90,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  color: imageindex == index ? Colors.blue : Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(23),
                      child: Container(
                        color: CupertinoTheme.of(context).barBackgroundColor,
                        width: 90,
                        height: 90,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: GetProduct[index],
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
