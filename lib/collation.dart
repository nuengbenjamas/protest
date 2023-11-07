import 'package:flutter/material.dart';
import 'package:project/my_constent.dart';
import 'package:project/show_image.dart';


class CollationLayout extends StatelessWidget {
  
  const CollationLayout({super.key});

  @override
  Widget build(BuildContext context) {

    //double size = MediaQuery.of(context).size.width;
    return Expanded(
      //width: size*0.4,
      //color: Colors.blue.shade100,
      child: Center(
        child: ShowImage(
          
          path: MyConstent.image5,
          
          ),
          ),
        
        );
      
    
  }

 
}
