import 'package:flutter/material.dart';

class NavigatorLayout extends StatelessWidget {
  const NavigatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
      height: 100,
      color: Color.fromARGB(255, 213, 223, 232),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                child: Image(
                  image: AssetImage('images/3.png'),
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'PHOENIX',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text('Order Food')
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/picture', (route) => false), 
                    child: Text('Home')
                    ),
                  SizedBox(
                    width: 50,
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/orderlist', (route) => false), 
                    child: Text('Order List')
                    ),
                    SizedBox(
                      width: 50,
                    ),
                  TextButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/payment', (route) => false), 
                    child: Text('Payment')
                    ),
                    SizedBox(
                      width: 50,
                    ),
                 
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
