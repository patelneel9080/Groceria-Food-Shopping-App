import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';


import '../../utils/images/imagess.dart';



class BurgerOrderPage extends StatefulWidget {
  const BurgerOrderPage({super.key});

  @override
  State<BurgerOrderPage> createState() => _BurgerOrderPageState();
}

class _BurgerOrderPageState extends State<BurgerOrderPage> {
  List<String> items = [
   Food.lambburger,
   Food.hamburger,
    Food.turkeyburger
  ];

  List<String> txt = [
    "LamBurger",
    "HamBurger",
    "TurkeyBurger",
  ];

  List<String> prize = [
    "\$15",
    "\$10",
    "\$23",
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: size.height/3.5,),
            CarouselSlider(
                items: [
                  for (String i in items)
                    ClipOval(
                      child: Container(
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: NetworkImage(i), fit: BoxFit.cover),
                            boxShadow: kElevationToShadow[2]),
                      ),
                    )
                ],
                options: CarouselOptions(
                    initialPage: activeIndex,
                    onPageChanged: (i, r) {
                      activeIndex = i;
                      setState(() {});
                    },
                    viewportFraction: .79,
                    height: size.height/2.5,
                    autoPlay: true,
                    animateToClosest: true,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.easeInSine)),
            SizedBox(
              height: size.height/22,
            ),
            Text(
              txt[activeIndex],
              style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),
            ),
            Text(
              prize[activeIndex],
              style: TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
