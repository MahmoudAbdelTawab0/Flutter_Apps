import 'package:flutter/material.dart';
class InvocieList extends StatelessWidget {
  const InvocieList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Text("Invocie List Form",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),
        ) ,
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          Table(
            children: [
              TableRow(
                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                children: [
                  Text('Lion No.')
                ]    
              )
            ],
          )
            ]
        ),
      ),
    );
  }
}
