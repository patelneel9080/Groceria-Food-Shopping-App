import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:swiggy/config/app_constant.dart';
import 'package:swiggy/pages/location_access.dart';
import 'package:swiggy/pages/welcome_splashscreen.dart';
import 'package:swiggy/pages/otp_login.dart';

import '../utils/Appcolor/app_color.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _userEmail = TextEditingController();
  String _error = '';

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
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Container(
        height: size.height,
        width: size.width,
        margin: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Help us get to know you",
              style: GoogleFonts.mukta(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: size.height / 35,
            ),
            TextField(
              onTap: () {},
              cursorColor: Colors.black54,
              controller: _userName,
              style: const TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                labelText: "Name",
                labelStyle: const TextStyle(color: AppColor.textfieldcolor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColor.textfieldcolor),
                ),
                hintText: 'Enter your name',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColor.textfieldcolor),
                ),
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
              ),
            ),
            if (_error.isNotEmpty)
              Text(
                _error,
                style: const TextStyle(color: Colors.red),
              ),
            SizedBox(
              height: size.height / 35,
            ),
            TextField(
              controller: _userEmail,
              onTap: () {},
              cursorColor: Colors.black54,
              style: const TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                labelText: "Email(optional)",
                labelStyle: const TextStyle(color: AppColor.textfieldcolor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColor.textfieldcolor),
                ),
                hintText: 'Enter your e-mail',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColor.textfieldcolor),
                ),
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
              ),
            ),
            SizedBox(
              height: size.height / 36,
            ),
            ElevatedButton(
              onPressed: () async {
                if (_userName.text.isEmpty) {
                  setState(() {
                    _error = 'Please enter your name';
                  });
                } else {
                  _error = "";
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageSix(),
                        ));
                  });
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.setString("userName", _userName.text);
                  userName = pref.getString("userName")!;
                  pref.setString("userEmail", _userEmail.text);
                  userEmail = pref.getString("userEmail")!;
                  print(userName);
                }
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(400.w, size.height / 18)),
                backgroundColor:
                const MaterialStatePropertyAll(AppColor.buttoncolor),
              ),
              child: Text(
                "Confirm details",
                style: GoogleFonts.mukta(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
