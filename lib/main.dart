import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:swiggy/config/app_constant.dart';
import 'package:swiggy/model/cart_model.dart';
import 'package:swiggy/navigation_pages/Food_Page/pizza_order_page.dart';
import 'package:swiggy/navigation_pages/Instamart/seemore_icecream.dart';
import 'package:swiggy/navigation_pages/homepage.dart';
import 'package:swiggy/pages/name_email_login.dart';
import 'package:swiggy/pages/getstarted.dart';
import 'package:swiggy/pages/location_access.dart';
import 'package:swiggy/screen/homescreen.dart';
import 'package:swiggy/screen/splashscreen.dart';
import 'package:swiggy/testfile.dart';


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
    return  Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return ChangeNotifierProvider(
          create: (BuildContext context) => CartModel(),
          child: MaterialApp(
            theme: ThemeData(
                appBarTheme: const AppBarTheme(color: Colors.deepPurple)
            ),
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
          ),
        );
      },
    );
  }
}
