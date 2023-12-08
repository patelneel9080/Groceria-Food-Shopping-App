import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy/pages/name_email_login.dart';
import 'package:swiggy/screen/homescreen.dart';
import 'package:swiggy/utils/Appcolor/app_color.dart';

import '../utils/images/imagess.dart';



class PageSix extends StatefulWidget {
  const PageSix({super.key});

  @override
  State<PageSix> createState() => _PageSixState();
}

class _PageSixState extends State<PageSix> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height/10),
            const Text("What's your location?",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
            const Text("You need your location to show available restaurants & products",style: TextStyle(color: Colors.black54,fontSize: 18,),),
            SizedBox(height: size.height/10),
            Container(
              height: size.height/2.5,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(ScreenImages.locationpage),fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: size.height/12,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(size.width, size.height / 16)),
                backgroundColor:
                MaterialStatePropertyAll(AppColor.buttoncolor),
              ),
              child: Text(
                "Allow location access",
                style: GoogleFonts.mukta(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(size.width, size.height / 16)),
                backgroundColor:
                MaterialStateProperty.all(Colors.white),
                elevation: MaterialStateProperty.all(0)
              ),
              child: Text(
                "Enter Location Manually",
                style: GoogleFonts.mukta(
                    color: AppColor.textfieldcolor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
