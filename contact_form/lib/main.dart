import 'package:contact_form/screens/basic_contact_form_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactFormScreen(),
    );
  }
}




