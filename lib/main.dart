import 'package:flutter/material.dart';
import 'package:project/Picture.dart';
import 'package:project/autoimagelayout.dart';
import 'package:project/order_List.dart';
import 'package:project/payment.dart';



final Map<String, WidgetBuilder> map = {
  '/picture' : (BuildContext context) => Picture(),
  '/orderlist' : (BuildContext context) => OrderList(),
  '/payment' : (BuildContext context) => Payment(),
  '/autoimagelayout' : (BuildContext context) => AutoImageLayout(),
  
   
};

String initialRoute = '/picture';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    //  home: AutoImageLayout(),
    //  debugShowCheckedModeBanner: false,
      routes: map,
      initialRoute: initialRoute,
    );
  }
}