import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class IceCreamView extends StatefulWidget {
  const IceCreamView({super.key, required this.image, required this.title
  });


  final String image;
  final String title;
  @override
  State<IceCreamView> createState() => _IceCreamViewState();
}

class _IceCreamViewState extends State<IceCreamView> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
           ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 45,),
            Container(
              alignment: Alignment.bottomCenter,
              height: 350,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: NetworkImage(widget.image),
                      fit: BoxFit.cover,
                      opacity: 0.75),
                  boxShadow: kElevationToShadow[2]),

            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              widget.title,
              style: GoogleFonts.lora(color: Colors.white, fontSize: 32),
            ),
            const SizedBox(
              height: 8,
            ),
            Slider(
              value: .65,
              onChanged: (value) => activeIndex,
              inactiveColor: const Color(0xffA5A5A5),
              activeColor: const Color(0xffFFFFFF),
            ),
            const SizedBox(height: 7),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("0.57",
                    style: GoogleFonts.ramabhadra(
                        color: Colors.white.withOpacity(.7), fontSize: 14)),
                const SizedBox(
                  width: 25,
                ),
                Icon(
                  CupertinoIcons.backward_end,
                  color: Colors.white.withOpacity(0.7),
                  size: 35,
                ),
                const SizedBox(
                  width: 49,
                ),
                Icon(
                  Icons.play_circle_outline,
                  color: Colors.white.withOpacity(0.7),
                  size: 70,
                ),
                const SizedBox(
                  width: 49,
                ),
                Icon(
                  CupertinoIcons.forward_end,
                  color: Colors.white.withOpacity(0.7),
                  size: 35,
                ),
                const SizedBox(
                  width: 25,
                ),
                Text("2.46",
                    style: GoogleFonts.ramabhadra(
                        color: Colors.white.withOpacity(.7), fontSize: 14)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
