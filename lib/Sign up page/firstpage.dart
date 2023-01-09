

import 'package:flutter/material.dart';
import 'package:reipe_abhay/Sign%20up%20page/signup.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(

        child: Column(
          children: [
            AppWelcome(),
          ],
        ),
      ),




    );
  }
}


class AppWelcome extends StatefulWidget {
  const AppWelcome({Key? key}) : super(key: key);

  @override
  State<AppWelcome> createState() => _AppWelcomeState();
}

class _AppWelcomeState extends State<AppWelcome> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(top: 450),
        child:  Column(
        children: [
        Container(
        height:MediaQuery.of(context).size.height/2-25,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFfafafa),
        child: SizedBox(
        height: 290,
        width: 405,
        child: ListView(
        shrinkWrap: true,
        children: [
        Padding(
        padding: const EdgeInsets.only(left:24,bottom: 24),
        child: Text(

        "KUK BUK",

          style: TextStyle(
            decoration: TextDecoration.none,
        fontSize: 30,
        fontWeight: FontWeight.w700 ,
        color: Colors.orange,
        fontFamily: 'ReadexProRegular.ttf',
        ),

        ),
        ),
        Padding(
        padding: const EdgeInsets.only(bottom: 35,left: 24.0,right: 24),
        child: Text("Lorem ipsum dolor sit amet,  consectetur  adipiscing elit. Sag",style: TextStyle(
          decoration: TextDecoration.none,
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: Colors.black,
        fontFamily: 'Montserrat-Medium.ttf',
        ),
        ),
        ),
        Padding(
        padding: const EdgeInsets.only(bottom: 8,left: 24,right: 24),
        child: SizedBox(
        height: 50,
        child: ElevatedButton(
        onPressed: (){}, child: Text(
          "Log in",
          style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        ),
        ),
        style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        )
        ),
        ),
        ),
        ),
        Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("or",style: TextStyle(
            decoration: TextDecoration.none,
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: Colors.black,
            fontFamily: 'Montserrat',

        ),
        ),
        ],
        ),
        ),
        Padding(
        padding: const EdgeInsets.only(left: 24,right: 24,top: 6),
        child: SizedBox(
        height: 50,

        child: OutlinedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => SignupPage()));

        }, child: Text("Sign up",),
        style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(
        width: 1,
        color: Colors.orange,
        ),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
        ),
        ),
        ),
        ),
        ),




        ],

        ),
        ),




        ),
        ],
        ),

    );
  }
}
