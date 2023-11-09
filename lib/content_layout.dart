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

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final TextEditingController _textController = TextEditingController(text: '');
  String data = '';
  final GlobalKey _qrkey = GlobalKey();
 
  Future getUserData() async {
    var response = await http.get(Uri.parse('https://partner1.triggersplus.com/dining/qr_code_test/APP_SECRET_KEY/'));
    var jsonData = jsonDecode(response.body);


    List<User> users = []; 
    return jsonData; 
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
      ),
      body: Container(
        child: Card(
          child: FutureBuilder(
              future: getUserData(),
              builder: (context, snapshot) {
               // print("###1 ${snapshot.data}");
               // print("###2 ${snapshot.data['status']}");
               // print("###3 ${snapshot.data['status']['code']}");
               // print("###4 ${snapshot.data['status']['description']}");
               // print("###5 ${snapshot.data['data']}");
                print("###6 ${snapshot.data['data']['qrRawData']}"); 
                return Container(
                    child: Center(
                      child: Text(snapshot.data['data']['qrRawData']),
                    ),
                  );
              }),
        ),
      ),
    );
  }
}


class User {
  final String status, data;
  User(this.status, this.data,);
}
