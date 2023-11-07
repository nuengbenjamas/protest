import 'package:flutter/material.dart';
import 'package:project/collation.dart';

import 'package:project/informationlayout.dart';
import 'package:project/navigatorlayout.dart';
import 'package:responsive_builder/responsive_builder.dart';



class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 1200),
          child: ScreenTypeLayout(
            desktop: buildDesktop(),
            mobile: buldTabletAndMobile(),
            tablet: buldTabletAndMobile(),
          ),
        ),
      ),
    );
  }

  Widget buldTabletAndMobile() => ListView(
        children: [
          NavigatorLayout(),
          CollationLayout(),
          InformationLayout(),
        ],
      );




  Widget buildDesktop() => Column(
        children: [
          NavigatorLayout(),
          Expanded(
            child: Row(
              children: [
               CollationLayout(),
               InformationLayout(),
               
              ],
            ),
          ),
        ],
      );




  
}

