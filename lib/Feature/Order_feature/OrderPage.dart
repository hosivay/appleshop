import 'package:flutter/cupertino.dart';
import 'Widgets/OrderPage_Widgets.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
        navigationBar: Appbar_OrderPage(context),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(child: Text('Orders')),
          ],
        ));
  }


}