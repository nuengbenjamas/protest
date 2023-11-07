import 'package:flutter/material.dart';
import 'package:project/collation.dart';
import 'package:project/content_layout.dart';
//import 'package:project/content_layout.dart';
import 'package:project/navigatorlayout.dart';

import 'package:responsive_builder/responsive_builder.dart';


class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 1200),
          child: ScreenTypeLayout(
            desktop: buildDesktop(),
            mobile: buldTabletAndMobile(),
            tablet: Text('text1')
          ),
        ),
      ),
    );
  }

  Widget buldTabletAndMobile() => ListView(
        children: [
          NavigatorLayout(),
          CollationLayout(),
          
          
        ],
      );




  Widget buildDesktop() => Column(
        children: [
          NavigatorLayout(),
          Expanded(
            child: Row(
              children: [
               CollationLayout(),
               ContentLayout(),
               
              ],
            ),
          ),
        ],
      );
}

