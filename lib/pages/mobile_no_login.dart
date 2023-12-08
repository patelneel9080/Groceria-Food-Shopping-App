import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy/pages/otp_login.dart';

import '../utils/Appcolor/app_color.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
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
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Text("Enter your mobile number to get OTP",style: GoogleFonts.mukta(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),),
            SizedBox(height: size.height/86,),
            TextField(
              onTap: () {},
              keyboardType: TextInputType.number,
              cursorColor: Colors.black54,
              style: const TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(alignLabelWithHint: true,
                  border: InputBorder.none,
                labelText: "Mobile Number",
                  labelStyle: TextStyle(color: AppColor.textfieldcolor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    BorderSide(color: AppColor.textfieldcolor),
                  ),
                  hintText: 'Enter your phone number',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    BorderSide(color: AppColor.textfieldcolor),
                  ),
                  hintStyle: const TextStyle(
                      fontSize: 16, color: Colors.black54),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10.0),
                  prefix: Text("+91  |  ",style: TextStyle(color: Colors.black),)),
            ),
            SizedBox(height: size.height/36,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageThree(),
                    ));
              },
              child: Text(
                "Get OTP",
                style: GoogleFonts.mukta(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(size.width/1.2, size.height / 18)),
                backgroundColor:
                MaterialStatePropertyAll(AppColor.buttoncolor),
              ),
            ),
            SizedBox(height: size.height/56,),
            Text("By clicking, I accept the terms of service and privacy policy",style: TextStyle(color: Colors.black,fontSize: 14),)
          ],
        ),
      ),
    );
  }
}
