import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:swiggy/model/food_modelview.dart';
import 'package:swiggy/navigation_pages/Food_Page/pizza_order_page.dart';

import '../../config/app_constant.dart';
import '../../utils/Appcolor/app_color.dart';
import '../../utils/images/imagess.dart';

class InstamartPage extends StatefulWidget {
  const InstamartPage({super.key});

  @override
  State<InstamartPage> createState() => _InstamartPageState();
}

class _InstamartPageState extends State<InstamartPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: size.height / 54,
                          ),
                          TextField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.search),
                              hintText: "Search your daily grocery food",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    const BorderSide(color: Colors.black54),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide:
                                    const BorderSide(color: Colors.black54),
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
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54, spreadRadius: .32)
                                ],
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: NetworkImage(Food.discountgrocery),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: size.height / 56,
                          ),
                          Container(
                            height: size.height / 8,
                            width: size.width,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54, spreadRadius: .32)
                                ],
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: NetworkImage(Food.discount),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: size.height / 56,
                          ),
                          Text(
                            "---------------TRENDING ORDERS---------------",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18),
                          ),
                          SizedBox(
                            height: size.height / 56,
                          ),
                          Container(
                            height: size.height / 6.4,
                            width: size.width / 1.1,
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
                                Container(
                                  height: size.height / 6,
                                  width: size.width / 4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: NetworkImage(Food.amulmilk),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: size.width / 8,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AMUL MILK",
                                      style: GoogleFonts.playfairDisplay(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Prize : ₹33"),
                                    SizedBox(
                                      height: size.height / 86,
                                    ),
                                    Container(
                                      height: size.height / 22,
                                      width: size.width / 3,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                              color: AppColor.textfieldcolor,
                                              width: 1.5)),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text("SEE MORE>")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height / 56,
                          ),
                            Container(
                            height: size.height / 6.4,
                            width: size.width / 1.1,
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
                                Container(
                                  height: size.height / 6,
                                  width: size.width / 4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: NetworkImage(Food.icecreamcup),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: size.width / 8,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ICE CREAM",
                                      style: GoogleFonts.playfairDisplay(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Prize : ₹20"),
                                    SizedBox(
                                      height: size.height / 86,
                                    ),
                                    Container(
                                      height: size.height / 22,
                                      width: size.width / 3,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                              color: AppColor.textfieldcolor,
                                              width: 1.5)),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text("SEE MORE>")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height / 56,
                          ),
                          Container(
                            height: size.height / 6.4,
                            width: size.width / 1.1,
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
                                Container(
                                  height: size.height / 8,
                                  width: size.width / 4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: NetworkImage(Food.amulcoolmilk),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: size.width / 8,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "COOL MILK",
                                      style: GoogleFonts.playfairDisplay(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Prize : ₹20"),
                                    SizedBox(
                                      height: size.height / 86,
                                    ),
                                    Container(
                                      height: size.height / 22,
                                      width: size.width / 3,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                              color: AppColor.textfieldcolor,
                                              width: 1.5)),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text("SEE MORE>")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ])))
          ],
        ),
      ),
    );
  }
}
