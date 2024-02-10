import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy/navigation_pages/Food_Page/pizza_order_page.dart';

import '../../config/app_constant.dart';
import '../../utils/Appcolor/app_color.dart';
import '../../utils/images/imagess.dart';

class Food_Page extends StatefulWidget {
  const Food_Page({super.key});

  @override
  State<Food_Page> createState() => _Food_PageState();
}

class _Food_PageState extends State<Food_Page> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            leading: const Icon(
              CupertinoIcons.location_fill,
              color: Colors.white,
            ),

            pinned: false,
            snap: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Container(
                    height: size.height / 22,
                    width: size.width / 10,
                    color: Colors.white54,
                    child: const Icon(
                      Icons.person,
                      color: Colors.black54,
                    ),
                  ),
                ),
              )
            ],
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "L.P.Savani >",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "TGB, Hariom Nagar Society, Adajan Gam,Atman Park,...",
                  style: TextStyle( color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            floating: true,
            expandedHeight: size.height / 12,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: size.height,
              width: size.width,
              margin: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height / 54,
                  ),
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search),
                      hintText: "Search, Order, Enjoy, Repeat!",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.black54),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.black54),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 14.0),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 54,
                  ),
                  Container(
                    height: size.height / 6,
                    width: size.width,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                            image: NetworkImage(
                                Food.freedeliveryimage),fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: size.height / 56,
                  ),
                  Text(
                    "$userName , What's on your mind?",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: size.height / 56,
                  ),
                  InkWell(
                    onTap: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context) =>  PizzaOrderPage(),));
                    },
                    child: Container(
                      height: size.height / 6.4,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: CupertinoColors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black, blurRadius: 1.4)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "ORDER PIZZA",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              const Text(
                                "IT'S ALWAYS A GOOD TIME",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              const Text(
                                "FOR PIZZA!",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: size.height / 86,
                              ),
                              Container(
                                height: size.height / 32,
                                width: size.width / 4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: AppColor.textfieldcolor, width: 1.5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "30-40",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: size.width / 72,
                                    ),
                                    const Text(
                                      "Mins",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: size.width / 12,
                          ),
                          Container(
                            height: size.height / 10,
                            width: size.width / 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        Food.pizza),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 34,
                  ),
                  Container(
                    height: size.height / 6.4,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: CupertinoColors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black, blurRadius: 1.4)
                        ]),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "ORDER GROCERIES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            const Text(
                              "DAILY ESSENTIAL",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                            const Text(
                              "DELIVERED FAST!",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: size.height / 86,
                            ),
                            Container(
                              height: size.height / 32,
                              width: size.width / 4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: AppColor.textfieldcolor, width: 1.5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "12-15",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: size.width / 72,
                                  ),
                                  const Text(
                                    "Mins",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width / 12,
                        ),
                        Container(
                          height: size.height / 8,
                          width: size.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      HomePageScreenImages.productimage2),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height / 34,
                  ),
                  Container(
                    height: size.height / 4.6,
                    width: size.width,
                    decoration: const BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: Container(
                      margin: EdgeInsets.all(12),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Enjoy Our",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 24),
                          ),
                          Text(
                            "Groceria App",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 43),
                          ),
                          Text(
                            "Created by Neel Patel",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   height: size.height/4,
                  //   width: size.width,
                  //  child: Image.asset("assets/Images/img.png"),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
