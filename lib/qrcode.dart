import 'package:flutter/material.dart';
import 'package:project/my_constent.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCODELAYOUT extends StatefulWidget {
  const QRCODELAYOUT({super.key});

  @override
  State<QRCODELAYOUT> createState() => _QRCODELAYOUTState();
}

class _QRCODELAYOUTState extends State<QRCODELAYOUT> {
  final TextEditingController _textController = TextEditingController(text: '');
  String data = '';
  final GlobalKey _qrkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    labelText: 'Enter Text',
                    labelStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 146, 20), width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ))),
          ),
          const SizedBox(
            height: 15,
          ),
          RawMaterialButton(
            onPressed: () {
              setState(() {
                data = _textController.text;
              });
            },
            fillColor: MyConstent.primary,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
            child: const Text(
              'Generate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: RepaintBoundary(
              key: _qrkey,
              child: QrImageView(
                data: data,
                version: QrVersions.auto,
                size: 250.0,
              ),
            ),
          )
        ],
      )),
    );
  }
}
