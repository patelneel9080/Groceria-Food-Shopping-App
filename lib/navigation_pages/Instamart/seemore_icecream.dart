import 'package:flutter/material.dart';

class SeeMoreIceCream extends StatefulWidget {
  const SeeMoreIceCream({super.key});

  @override
  State<SeeMoreIceCream> createState() => _SeeMoreIceCreamState();
}

class _SeeMoreIceCreamState extends State<SeeMoreIceCream> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Ice Cream Stocks ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SizedBox(
          height: size.height,
          width: size.width/1.5,
          child: ListView.builder(
            itemCount: 4,scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: size.height/14,
                color: Colors.green,
              );
            },
          ),
        ));
  }
}
