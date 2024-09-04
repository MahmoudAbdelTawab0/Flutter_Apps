import 'package:flutter/material.dart';

class InvoiceListPage extends StatelessWidget {
  const InvoiceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Invoice List Form",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Table(
              children: [
                TableRow(
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  children: [
                    Text("Line No."),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
