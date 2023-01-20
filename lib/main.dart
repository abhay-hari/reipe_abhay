import 'package:flutter/material.dart';
import 'package:reipe_abhay/Sign%20up%20page/firstpage.dart';
import 'package:reipe_abhay/Sign%20up%20page/loginpage.dart';
import 'package:reipe_abhay/Sign%20up%20page/signup.dart';
import 'package:provider/provider.dart';
import 'Pages/Article one.dart';
import 'Pages/BottomNavigation Bar Screens/AddyoursScreen.dart';
import 'Pages/BottomNavigation Bar Screens/Media Screen.dart';
import 'Pages/CWWIH.dart';
import 'Diet and allergies.dart';
import 'Goal.dart';
import 'Pages/From incre.dart';
import 'Pages/Home.dart';
import 'Sign up page/ConfirmPassword.dart';
import 'Splash screen.dart';
import 'Sign up page/otpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe Book',
        theme: ThemeData(
            fontFamily: "Montserrat",
          primarySwatch: Colors.orange
        ),
        // home:StartingPage(),
        //   home: StartingPage(),
        // home: FromIncre(),
        // home:CWWIH(),
        // home:ArticleOne(),
        // home:Home(),
          home: AddYoursScreen(),
      ),
    );
  }
}