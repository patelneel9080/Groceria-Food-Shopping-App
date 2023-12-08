import 'package:flutter/material.dart';
import 'package:swiggy/config/app_constant.dart';

import 'package:swiggy/pages/location_access.dart';

import '../utils/images/imagess.dart';

class PageFive extends StatefulWidget {
  const PageFive({super.key});

  @override
  State<PageFive> createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive> {
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const PageSix()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Color(0xff704E9B),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: size.height/10),
            Text("Congratulations $userName !",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
            Text("Your welcome gift is unlocked",style: TextStyle(color: Colors.white70,fontSize: 18,),),
            SizedBox(height: size.height/10),
            Container(
              height: size.height/2.5,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(ScreenImages.welcomeimg),fit: BoxFit.cover)
              ),
            ),

          ],
        ),
      ),
    );
  }
}
