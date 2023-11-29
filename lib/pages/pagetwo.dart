import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              cursorColor: Colors.black54,
              style: const TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                  border: InputBorder.none,
                labelText: "+91",
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    BorderSide(color: Colors.transparent),
                  ),
                  hintText: 'Enter your phone number',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  hintStyle: const TextStyle(
                      fontSize: 16, color: Colors.black54),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10.0),
                  ),
            ),
            SizedBox(height: size.height/86,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageTwo(),
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
                MaterialStateProperty.all(Colors.deepOrangeAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
