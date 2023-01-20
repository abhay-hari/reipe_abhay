import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'BottomNavigation Bar Screens/AddyoursScreen.dart';
import 'BottomNavigation Bar Screens/Media Screen.dart';
import 'CWWIH.dart';
import 'BottomNavigation Bar Screens/HomeScreen.dart';
 class Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);
 
   @override
   State<Home> createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   int index=0;
   final navigationKey = GlobalKey<CurvedNavigationBarState>();
   final screens = [
     HomeScreen(),
     AddYoursScreen(),
     MediaScreen(),
   ];
   @override
   Widget build(BuildContext context) {

     return WillPopScope(
         onWillPop: ()async {
       return false;
     },
       child: Scaffold(
         body: screens[index],
         bottomNavigationBar: CurvedNavigationBar(
           key: navigationKey,
           index: index,
           color: Color(0xFFF0F0F0),
           backgroundColor: Colors.transparent,
           items: <Widget>[
             Container(
                height: 47,
               width: 54,
               decoration:
               BoxDecoration(
                   color: Color(0xFFF0F0F0),
               borderRadius: BorderRadius.all(Radius.circular(26))
             ),

                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                      color: Color(0xFFF86804),),
                    Text("Home",
                      style: TextStyle(
                          fontSize:11,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat-Light.ttf",
                          color: Color(0xFFF86804)
                      ),),
                  ],
                ),
              ),
             Container(
               height: 54,
               width: 54,
               decoration:
               BoxDecoration(
                   color: Color(0xFFF0F0F0),
                   borderRadius: BorderRadius.all(Radius.circular(26))
               ),
               child: Column(
                 children: [
                   Icon(Icons.add,
                       size: 30,
                       color: Color(0xFFF86804
                       )
                   ),
                   Text("Add your",
                     style: TextStyle(
                       fontSize:11,
                       fontWeight: FontWeight.w600,
                       fontFamily: "Montserrat-Light.ttf",
                       color: Color(0xFFF86804)
                   ),),
                 ],
               ),
             ),
             Container(
               height: 47,
               decoration:
               BoxDecoration(
                   color: Color(0xFFF0F0F0),
                   borderRadius: BorderRadius.all(Radius.circular(26))
               ),
               child: Column(
                 children: [
                   Icon(Icons.perm_media,
                       size: 30,
                       color: Color(0xFFF86804)),
                   Text("media",style: TextStyle(
                       fontSize:11,
                       fontWeight: FontWeight.w600,
                       fontFamily: "Montserrat-Light.ttf",
                       color: Color(0xFFF86804)
                   ),),
                 ],
               ),
             )
           ],

           onTap: (index) {
             setState(() {
               this.index=index;
             });
           },
         ),
       )
     );

   }
 }

