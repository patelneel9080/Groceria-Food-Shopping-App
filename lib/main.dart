import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swiggy/config/app_constant.dart';
import 'package:swiggy/navigation_pages/Food_Page/pizza_order_page.dart';
import 'package:swiggy/pages/name_email_login.dart';
import 'package:swiggy/pages/getstarted.dart';
import 'package:swiggy/pages/location_access.dart';
import 'package:swiggy/screen/homescreen.dart';
import 'package:swiggy/screen/splashscreen.dart';

import 'navigation_pages/Food_Page/burger_order_page.dart';
import 'pages/welcome_splashscreen.dart';
import 'pages/otp_login.dart';
import 'pages/mobile_no_login.dart';



Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref=await SharedPreferences.getInstance();
  userName =pref.getString("userName") ?? "";
  print("userName:$userName");
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.deepPurple)
      ),

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
