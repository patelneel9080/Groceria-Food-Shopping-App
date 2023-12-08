import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy/config/app_constant.dart';
import 'package:swiggy/navigation_pages/Food_Page/food_page.dart';

import 'package:swiggy/navigation_pages/searchpage.dart';
import 'package:swiggy/utils/Appcolor/app_color.dart';

import '../utils/images/imagess.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
        backgroundColor: Colors.white,
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
                    style: TextStyle(color: Colors.white, fontSize: 14),
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
                  children: [
                    SizedBox(
                      height: size.height / 54,
                    ),
                    TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.search),
                        hintText: "Dishes, restaurants, groceries & more",
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
                      height: size.height / 12,
                      width: size.width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  HomePageScreenImages.welcomeemoji))),
                    ),
                    Text(
                      "Welcome $userName",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      "FLAT 50% off + FREE DELIVERY",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: size.height / 56,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Food_Page(),
                            ));
                      },
                      child: Container(
                        height: size.height / 6.4,
                        width: size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: CupertinoColors.white,
                            boxShadow: const [
                              BoxShadow(color: Colors.black, blurRadius: 1.4)
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
                                  "ORDER FOOD",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                const Text(
                                  "FROM GREAT RESTAURANTS",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                const Text(
                                  "NEAR YOU!",
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
                                          color: AppColor.textfieldcolor,
                                          width: 1.5)),
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
                              height: size.height / 8,
                              width: size.width / 4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          HomePageScreenImages.productimage1),
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
                            BoxShadow(color: Colors.black, blurRadius: 1.4)
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
                                        color: AppColor.textfieldcolor,
                                        width: 1.5)),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: size.height / 11,
                          width: size.width / 2.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: CupertinoColors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 1.4)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "DINEOUT",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "EAT OUT & SAVE",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 10),
                                  ),
                                ],
                              ),
                              Container(
                                height: size.height,
                                width: size.width / 6,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: NetworkImage(
                                      HomePageScreenImages.productimage3),
                                )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width / 18,
                        ),
                        Container(
                          height: size.height / 11,
                          width: size.width / 2.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: CupertinoColors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 1.4)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "GENIE",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "PICK-UP & DROP",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 10),
                                  ),
                                ],
                              ),
                              Container(
                                height: size.height,
                                width: size.width / 6,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: NetworkImage(
                                      HomePageScreenImages.productimage4),
                                )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 54,
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
        ));
  }
}
