import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:swiggy/pages/name_email_login.dart';

import '../utils/Appcolor/app_color.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ), onPressed: () {
            Navigator.pop(context);
          },)),
      body: Container(
        height: size.height,
        width: size.width,
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text("Enter your mobile number to get OTP",style: GoogleFonts.mukta(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),),
            SizedBox(height: size.height/86,),
            OTPTextField(
              length: 6,
              width: size.width,
              fieldWidth: 40,
              style: TextStyle(
                  fontSize: 17
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
            ),
            SizedBox(height: size.height/36,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageFour(),
                    ));
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(size.width/1.2, size.height / 16)),
                backgroundColor:
                MaterialStatePropertyAll(AppColor.buttoncolor),
              ),
              child: Text(
                "Continue",
                style: GoogleFonts.mukta(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: size.height/56,),
            const Text("Didn't receive it? Retry",style: TextStyle(color: Colors.black,fontSize: 14),)
          ],
        ),
      ),
    );
  }
}
