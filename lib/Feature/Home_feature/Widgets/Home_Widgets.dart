import 'dart:ui';
import 'package:appleshop/Feature/ProductDetail_feature/ProductDetailPage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

import '../../../data/SlideInHomeData.dart';

Widget RowItems(
    {required List detail,
    required String titleUp,
    required String backgroundImage,
    required Color backgroundColor,
    required BuildContext context}) {
  return Material(
    color: CupertinoTheme.of(context).scaffoldBackgroundColor,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                titleUp,
                style: TextStyle(
                    color: CupertinoTheme.of(context).textTheme.textStyle.color,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                child: Container(
                    height: 229,
                    color: backgroundColor,
                    child: Row(
                      children: [
                        CachedNetworkImage(
                          imageUrl: backgroundImage,
                          width: 200,
                          height: 200,
                        ),
                      ],
                    )),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 190,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.7,
                    height: 230,
                    child: ListView.builder(
                      itemCount: detail.length,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Bounceable(
                              onTap: () {},
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  ProductDetailPage(
                                                    productName: detail[index]
                                                        ["title"],
                                                    categoryProduct: titleUp,
                                                  )),
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        // ignore: sized_box_for_whitespace
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 7, sigmaY: 7),
                                          child: Container(
                                            width: 170,
                                            height: 230,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Colors.grey.shade300
                                                      .withOpacity(0.5),
                                                  Colors.grey.shade200
                                                      .withOpacity(0.5),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 40, 0, 40),
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    "${detail[index]["image"]}",
                                                fit: BoxFit.fitHeight,
                                                // width: 110,
                                                // height: 110,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Text('${detail[index]["title"]}'),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}

FlutterCarousel imageSlider(BuildContext context) {
  return FlutterCarousel(
    options: CarouselOptions(
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 10),
      viewportFraction: 0.8,
      enlargeCenterPage: true,
      slideIndicator: CircularWaveSlideIndicator(
          currentIndicatorColor:
              CupertinoTheme.of(context).textTheme.textStyle.color,
          indicatorBackgroundColor:
              CupertinoTheme.of(context).barBackgroundColor.withOpacity(0.7),
          indicatorBorderColor: Colors.grey),
      floatingIndicator: false,
    ),
    items: sliders,
  );
}

class Slide {
  Slide({
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  final String imageUrl;
  final String title;
  final String description;
}

var slides = List.generate(
  SlideData.length,
  (index) => Slide(
      title: SlideData[index]["title"] as String,
      description: SlideData[index]["description"] as String,
      imageUrl: SlideData[index]["imageUrl"] as String),
);

final List<Widget> sliders = slides
    .map((item) => Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 30),
          child: Bounceable(
            onTap: () {},
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
                        imageUrl: item.imageUrl,
                        fit: BoxFit.cover,
                        height: 500,
                      ),
                    ),
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(0.5),
                            Colors.white.withOpacity(0.001)
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.white.withOpacity(0.5),
                              Colors.white.withOpacity(0.001)
                            ],
                          ),
                        ),
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
                            item.title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            item.description,
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
        ))
    .toList();
