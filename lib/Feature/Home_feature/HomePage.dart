import 'package:appleshop/Feature/Home_feature/Home_Appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../data/ProductData.dart';
import 'Widgets/Home_Widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          appBar_home(context),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(children: [
                imageSlider(context),
                const Divider(),
                RowItems(
                    titleUp: "iPhone",
                    detail: IphoneList,
                    backgroundColor: Colors.blueAccent,
                    backgroundImage:
                        "https://images.dailyobjects.com/marche/product-images/1101/slick-phone-case-cover-for-iphone-14-plus-images/Nimbus-Phone-Case-Cover-For-iPhone-14-Max.png?tr=cm-pad_resize,v-2",
                    context: context),
                const SizedBox(
                  height: 30,
                ),
                const Divider(),
                RowItems(
                    titleUp: "iPad",
                    detail: IpadList,
                    backgroundColor: Colors.red.shade800,
                    backgroundImage: BG_Ipad,
                    context: context),
                const SizedBox(
                  height: 30,
                ),
                const Divider(),
                RowItems(
                    titleUp: "Watch",
                    detail: watchList,
                    backgroundColor: Colors.deepOrange,
                    backgroundImage: BG_Watch,
                    context: context),
                const SizedBox(
                  height: 100,
                ),
                const SizedBox(
                  height: 100,
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
