import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Goal.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  
    Widget build(BuildContext context) {
    Timer(Duration(seconds: 4),
            ()=>{Navigator.push(
        context, MaterialPageRoute(
        builder: (context)=> Goalpage()

    ),) });
    return Scaffold(
      body: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 158),
              child: Container(
                height: 343,
                width: 343,

                child: Lottie.asset(
                  "assets/lottie_animation/cooking.json",
                  fit: BoxFit.fill,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:42),
              child: Text("KUKBUK", style: TextStyle(

                  fontSize:30,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Montserrat",
                  color: Color(0xFFFF6B00)
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:42),
              child: Text("Now you can cook your dish as  you wish\n within minutes  ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize:14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat",
                  color:Color(0xFF000000)
              ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
