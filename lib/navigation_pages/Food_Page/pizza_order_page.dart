import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/images/imagess.dart';



class PizzaOrderPage extends StatefulWidget {
  const PizzaOrderPage({super.key});

  @override
  State<PizzaOrderPage> createState() => _PizzaOrderPageState();
}

class _PizzaOrderPageState extends State<PizzaOrderPage> {
  List<String> items = [
    Food.onioncapsicumpizza,
    Food.onionpizza,
    Food.tomatopizza
  ];

  List<String> txt = [
    "Onion Capsicum Pizza",
    "Onion Pizza",
    "Tomato Pizza",
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
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        centerTitle: true,
        title: Text("Pizza Order",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.shopping_cart,color: Colors.white,))
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
         ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: size.height/43.5,),
            Text("It's Always A Good Time For Pizza",style: TextStyle(color: Colors.black,fontSize: 17),),
            SizedBox(height: size.height/12.5,),
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
                    animateToClosest: true,

                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.easeInSine)),
             SizedBox(
              height: size.height/32,
            ),
            Text(
              txt[activeIndex],
              style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),
            ),
            Text(
              prize[activeIndex],
              style: TextStyle(color: Colors.black,fontSize: 32,fontWeight: FontWeight.w500),
            ),
            ElevatedButton(onPressed: () {

            }, child: Text("Buy Now"))
          ],
        ),
      ),
    );
  }
}
