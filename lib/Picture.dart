import 'package:flutter/material.dart';
import 'package:project/autoimagelayout.dart';
import 'package:project/autoimagelayout.dart';
import 'package:project/navigatorlayout.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Picture extends StatefulWidget {
  const Picture({super.key});

  @override
  State<Picture> createState() => _PictureState();
}

class _PictureState extends State<Picture> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: buildDesktop(),        
        mobile: Text('test1'),
        tablet: Text('test1'),
      ),
    );
  }

  Widget buildDesktop() => Column(
        children: [
          NavigatorLayout(),
          Expanded(
            child: Row(
              children: [
              
                AutoImageLayout(),
               
              ],
            ),
          ),
        ],
      );

  

  
}
