import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:swiggy/pages/getstarted.dart';

import '../utils/images/imagess.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const PageOne()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: size.height/4,
                width: size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(ScreenImages.splashscreen)))),
            Text("GROCERIA",style: GoogleFonts.prociono(fontSize: 24,color: 
                Color(0xffF9BA56),fontWeight: FontWeight.bold),),
          ],
        ));
  }
}
