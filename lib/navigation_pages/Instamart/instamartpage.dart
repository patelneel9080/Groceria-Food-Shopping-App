import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:swiggy/model/food_modelview.dart';
import 'package:swiggy/navigation_pages/Food_Page/pizza_order_page.dart';
import 'package:swiggy/navigation_pages/Instamart/icecreamview.dart';

import '../../config/app_constant.dart';
import '../../model/cart_model.dart';
import '../../model/item_tile.dart';
import '../../pages/cart_page.dart';
import '../../utils/Appcolor/app_color.dart';
import '../../utils/images/imagess.dart';
import 'listviewscreen.dart';

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
        appBar: PreferredSize(
          preferredSize: Size(size.width, size.height/12),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "L.P.Savani >",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "TGB, Hariom Nagar Society, Adajan Gam,Atman Park,...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            leading: Icon(CupertinoIcons.location_fill,color: Colors.white,),
            actions: [
              IconButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CartPage();
                    },
                  ),
                );
              }, icon: Icon(CupertinoIcons.shopping_cart,color: Colors.white,))
            ],
          ),
        ),
        // body: CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       automaticallyImplyLeading: false,
        //       leading: const Icon(
        //         CupertinoIcons.location_fill,
        //         color: Colors.white,
        //       ),
        //       pinned: false,
        //       snap: true,
        //       actions: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: ClipOval(
        //             child: Container(
        //               height: size.height / 22,
        //               width: size.width / 10,
        //               color: Colors.white54,
        //               child: const Icon(
        //                 Icons.person,
        //                 color: Colors.black54,
        //               ),
        //             ),
        //           ),
        //         )
        //       ],
        //       title: const Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text(
        //             "L.P.Savani >",
        //             style: TextStyle(
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 20),
        //           ),
        //           Text(
        //             "TGB, Hariom Nagar Society, Adajan Gam,Atman Park,...",
        //             style: TextStyle(color: Colors.white, fontSize: 14),
        //           ),
        //         ],
        //       ),
        //       floating: true,
        //       expandedHeight: size.height / 12,
        //     ),
        //   ],
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),
            // good morning bro
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Good morning,'),
            ),

            const SizedBox(height: 4),

            // Let's order fresh items for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's order fresh items for you",
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),

            const SizedBox(height: 24),

            // categories -> horizontal listview
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Fresh Items",
                style: GoogleFonts.notoSerif(
                  //fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            // recent orders -> show last 3
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    padding: const EdgeInsets.all(12),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: value.shopItems.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.2,
                    ),
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        itemName: value.shopItems[index][0],
                        itemPrice: value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                        onPressed: () =>
                            Provider.of<CartModel>(context, listen: false)
                                .addItemToCart(index),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CartPage();
              },
            ),
          ),
          child: const Icon(Icons.shopping_bag),
        ),
      ),
    );
  }
}
