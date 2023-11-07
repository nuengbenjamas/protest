import 'package:flutter/material.dart';

class InformationLayout extends StatelessWidget {
  const InformationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "ORDER LIST",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
            DataTable(
              columns: const [
                DataColumn(label: Text("Qty")),
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Price"))
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text("2")),
                  DataCell(Text("Wontons in soup")),
                  DataCell(Text("50")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Noodle")),
                  DataCell(Text("50")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Thai Dessert Set")),
                  DataCell(Text("250")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Straawberry")),
                  DataCell(Text("50")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Vanilla")),
                  DataCell(Text("50")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Green Tea")),
                  DataCell(Text("50")),
                ]),
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Coffee")),
                  DataCell(Text("50")),
                ]),
              ],
            ),

    Expanded(
              child: DataTable(columns: const [
                DataColumn(label: Text("")),
                DataColumn(label: Text("VAT")),
                DataColumn(label: Text("77")),
              ], rows: const [
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text("SERVICE CHARGE")),
                  DataCell(Text("100")),
                ]),
                DataRow(cells: [
                  DataCell(Text('8')),
                  DataCell(Text("TOTAL")),
                  DataCell(Text("777")),
                ])
              ]),
            ),
          ])),
    );
  }
}
