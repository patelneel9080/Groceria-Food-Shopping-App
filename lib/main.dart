import 'package:flutter/material.dart';
import 'package:swiggy/pages/pageone.dart';
import 'package:swiggy/screen/splashscreen.dart';

import 'pages/pagetwo.dart';



void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageTwo(),
    );
  }
}
