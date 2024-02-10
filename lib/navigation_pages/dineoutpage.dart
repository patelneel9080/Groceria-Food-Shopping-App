import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

import '../model/api_model.dart';

class DineOutPage extends StatefulWidget {
  const DineOutPage({Key? key}) : super(key: key);

  @override
  State<DineOutPage> createState() => _DineOutPageState();
}

class _DineOutPageState extends State<DineOutPage> {
  List<RestaurantModel> restaurants = [];
  List<MenuItem> cartItems = [];
  List<MenuItem> filteredItems = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    try {
      String jsonString =
      await rootBundle.rootBundle.loadString("jsonData/data.json");
      List<dynamic> jsonList = json.decode(jsonString);
      setState(() {
        restaurants = jsonList
            .map((json) => RestaurantModel.fromJson(json))
            .toList();
        filteredItems.addAll(
            restaurants.expand((restaurant) => restaurant.menu));
      });
    } catch (e) {
      print("Error loading json data: $e");
    }
  }

  void addToCart(MenuItem item) {
    setState(() {
      cartItems.add(item);
    });
  }

  void removeFromCart(MenuItem item) {
    setState(() {
      cartItems.remove(item);
    });
  }

  void filterItems(String query) {
    setState(() {
      filteredItems = restaurants
          .expand((restaurant) => restaurant.menu)
          .where((item) =>
          item.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final bool isDarkMode = theme.brightness == Brightness.dark; // Check if dark mode

    return Scaffold(
      backgroundColor:  Colors.white,
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
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodCartPage(
                        cartItems: cartItems,
                        removeFromCart: removeFromCart,
                      ),
                    ),
                  );
                },
                icon: Icon(
                  CupertinoIcons.shopping_cart,
                  color: Colors.white,
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
            floating: true,
            expandedHeight: size.height / 12,
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: size.height,
                width: size.width,
                margin: const EdgeInsets.only(left: 14, right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height / 54,
                    ),
                    Container(
                      height: size.height / 4.4,
                      width: size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://miro.medium.com/v2/resize:fit:679/1*eBOW1aiJtMsVPTYn2vjVDg.gif"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(18),
                        color: CupertinoColors.white,
                        boxShadow: const [
                          BoxShadow(color: Colors.black, blurRadius: 1.4),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height / 34,
                    ),
                    TextField(
                      maxLines: 1,
                      onChanged: (value) => filterItems(value),
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.search),
                        hintText: "Search Foods here...",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: isDarkMode
                                ? Colors.white // Change text color for dark mode
                                : Colors.black54,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: isDarkMode
                                ? Colors.white // Change text color for dark mode
                                : Colors.black54,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18.0,
                          horizontal: 14.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 54,
                    ),
                    Text(
                      "Top Trending Food :- ",
                      style: TextStyle(
                        color: isDarkMode
                            ? Colors.white // Change text color for dark mode
                            : Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: filteredItems.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: CupertinoColors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 1.4),
                              ],
                            ),
                            margin: EdgeInsets.all(8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 150,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: isDarkMode
                                      ? Colors.white // Change text color for dark mode
                                      : Colors.black54,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          filteredItems[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${filteredItems[index].name}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: isDarkMode
                                            ? Colors.white // Change text color for dark mode
                                            : Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Price :- ${filteredItems[index].price}",
                                      style: TextStyle(
                                        color: isDarkMode
                                            ? Colors.white // Change text color for dark mode
                                            : Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Phone No:- ${restaurants[index].phoneNumber}",
                                      style: TextStyle(
                                        color: isDarkMode
                                            ? Colors.white // Change text color for dark mode
                                            : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {
                                    if (cartItems
                                        .contains(filteredItems[index])) {
                                      removeFromCart(filteredItems[index]);
                                    } else {
                                      addToCart(filteredItems[index]);
                                    }
                                  },
                                  icon: Icon(
                                    cartItems
                                        .contains(filteredItems[index])
                                        ? CupertinoIcons.heart_fill
                                        : CupertinoIcons.heart,
                                    color: cartItems
                                        .contains(filteredItems[index])
                                        ? Colors.red
                                        : null,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class FoodCartPage extends StatelessWidget {
  final List<MenuItem> cartItems;
  final Function(MenuItem) removeFromCart;

  const FoodCartPage({
    Key? key,
    required this.cartItems,
    required this.removeFromCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(CupertinoIcons.arrow_left,color: Colors.white,),
        ),
        title: Text('Food Cart',style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          // return ListTile(
          //   title: Text('${cartItems[index].name}'), // Display name and quantity
          //   trailing: IconButton(
          //     icon: Icon(Icons.delete),
          //     onPressed: () => removeFromCart(cartItems[index]),
          //   ),
          // );
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: CupertinoColors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.black, blurRadius: 1.4)
                ]),
            margin: EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(
                          cartItems[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // SizedBox(width: size.width / 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${cartItems[index].name}',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                        "Price :- ${cartItems[index].price}"),

                  ],
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => removeFromCart(cartItems[index]),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
