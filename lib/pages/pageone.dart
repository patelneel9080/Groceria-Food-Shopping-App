import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy/images/imagess.dart';

import 'pagetwo.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(ScreenImages.getstartedpage),
                  fit: BoxFit.cover,
                  opacity: .6)),
          child: Container(
            height: size.height,
            width: size.width,
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Swiggy",
                  style: GoogleFonts.mukta(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height / 112,
                ),
                Row(
                  children: [
                    Text(
                      "Food",
                      style: GoogleFonts.mukta(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 8,
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Text(
                      "Instamart",
                      style: GoogleFonts.mukta(
                          color: Colors.white54,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 8,
                    ),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    Text(
                      "Dineout",
                      style: GoogleFonts.mukta(
                          color: Colors.white54,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 112,
                ),
                Divider(
                  color: Colors.white54,
                ),
                SizedBox(
                  height: size.height / 102,
                ),
                Text(
                  "Order from top restaurants",
                  style: GoogleFonts.mukta(color: Colors.white54, fontSize: 23),
                ),
                SizedBox(
                  height: size.height / 102,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageTwo(),
                        ));
                  },
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.mukta(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                        Size(size.width, size.height / 18)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrangeAccent),
                  ),
                ),
                SizedBox(
                  height: size.height / 45,
                ),
              ],
            ),
          )),
    );
  }
}
