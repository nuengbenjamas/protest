import 'package:flutter/material.dart';
import 'package:project/my_constent.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ContentLayout extends StatelessWidget {
  
  const ContentLayout({super.key});

  @override
  Widget build(BuildContext context) {
    String data = '';
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text("PAY INVOICE", style: TextStyle(fontSize: 25),),
                )
              ],
            ),

             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text("TOTAL : 777", style: TextStyle(fontSize: 20),),
                )
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: QrImageView(
                    data: 'Nueng',
                    version: QrVersions.auto,
                    size: 150,
                    )
                )
              ],
            ), 

             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text("SCAN TO PAY", style: TextStyle(fontSize: 15),),
                )
              ],
            ),

             
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text("Support all mobile blanking", style: TextStyle(fontSize: 17),),
                )
              ],
            ),

             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text("Thank you.", style: TextStyle(fontSize: 15),),
                )
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('ありがとうございます。', style: TextStyle(fontSize: 15),),
                )
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('谢谢。', style: TextStyle(fontSize: 15),),
                )
              ],
            ),
          

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Powered by PHOENIX', style: TextStyle(fontSize: 10),),
                )
              ],
            ),
          


          
          ],
        ),
      ),
    );
  }
}
