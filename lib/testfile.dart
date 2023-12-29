import 'package:flutter/material.dart';

class TestFile extends StatefulWidget {
  const TestFile({super.key});

  @override
  State<TestFile> createState() => _TestFileState();
}

class _TestFileState extends State<TestFile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://png.pngtree.com/png-clipart/20201221/ourmid/pngtree-fresh-red-apple-png-image_2598109.jpg"))
        ),
      ),
    );
  }
}
