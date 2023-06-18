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
                    TitleUp: "iPhone",
                    detail: IphoneList,
                    BackgroundColor: Colors.blueAccent,
                    BackgroundImage:
                        "https://images.dailyobjects.com/marche/product-images/1101/slick-phone-case-cover-for-iphone-14-plus-images/Nimbus-Phone-Case-Cover-For-iPhone-14-Max.png?tr=cm-pad_resize,v-2",
                    context: context),
                const SizedBox(
                  height: 30,
                ),
                const Divider(),
                RowItems(
                    TitleUp: "iPad",
                    detail: IpadList,
                    BackgroundColor: Colors.red.shade800,
                    BackgroundImage:
                       BG_Ipad,
                    context: context),
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
