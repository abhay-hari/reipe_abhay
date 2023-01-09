import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'CWWIH.dart';
 class Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);
 
   @override
   State<Home> createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   @override
   Widget build(BuildContext context) {
     return WillPopScope(
         onWillPop: ()async {
       return false;
     },
       child: DefaultTabController(
       length: 6,
       child: Scaffold(
         body: ListView(
           scrollDirection: Axis.vertical,
           children: [
             Padding(
               padding:EdgeInsets.only(top: 48),
               child: Row(
                 children: [
                   Text("Hi Alexa\nLet’s make a Delish",
                     style: TextStyle(
                         fontSize:20,
                         fontWeight: FontWeight.w700,
                         fontFamily: "Montserrat",
                         color: Color(0xFF121212)
                     ),
                   ),
                   SizedBox(
                     width: 100,
                   ),
                   Container(
                     height: 50,
                       width: 50,
                       // color:Color(0xFFFFF7F2)
                     decoration: BoxDecoration(
                       color: Colors.black,
                       border: Border.all(color: Colors.blue),
                       borderRadius: BorderRadius.circular(25)
                     ),
                   ),
                 ],
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(left: 20, right: 20,top: 19),
               child: Container(
                 height: 50,
                 width: MediaQuery.of(context).size.width-50,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   // color: Colors.red,
                   border: Border.all(color: Color(0xFFFF6B00)),

                 ),
                 child: Padding(
                   padding:  EdgeInsets.all(8.0),
                   child: TextFormField(

                     decoration: InputDecoration(
                       floatingLabelBehavior: FloatingLabelBehavior.never,
                       enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.white),
                       ),
                         focusedBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.white),
                         ),

                       prefixIcon: Icon(Icons.search),
                       labelText: "Serach Recipes, Cuisines, Diets,"
                           ,labelStyle: TextStyle(
                       fontSize: 12,
                       fontWeight: FontWeight.w400,
                       color: Color(0xFF9F9F9F)
                     )
                     ),
                   ),
                 )
               ),
             ),
             SizedBox(
               height: 5,
             ),
             Padding(
               padding:  EdgeInsets.only(left: 35,right: 35,top: 13),
               child: GestureDetector(
                 onTap: (){Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const CWWIH()),
                 );},

                 child: Container(
                   height: 37,
                   width: 301,
                   decoration: BoxDecoration(
                     border: Border.all(
                         color: Color(0xFFFF6B00) ),
                     color:  Color(0xFFFFF7F2)
                   ),
                   child: Center(
                     child: Text("COOK WITH WHAT I HAVE",
                       style: TextStyle(
                           fontSize:11,
                           fontWeight: FontWeight.w500,
                           fontFamily: "Montserrat",
                           color: Color(0xFF121212)
                       ),
                     ),
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 26),
               child: Text("Cuisine",
                 style:TextStyle(
                     fontSize:15,
                     fontWeight: FontWeight.w700,
                     fontFamily: "Montserrat",
                     color: Color(0xFF000000)
                 ),),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 13),
               child: TabBar(
                 isScrollable: true,
                 indicatorColor: Colors.green,
                 tabs:  [
                   Tab(
                     text: "North indian",
                   ),
                   Tab(
                     text: "chinese",
                   ),
                   Tab(
                     text: "American ",
                   ),
                   Tab(
                     text: "North indian ",
                   ),
                   Tab(
                     text: "chinese",
                   ),
                   Tab(
                     text: "American ",
                   ),
                 ],
                 labelColor: Colors.black,
                 labelStyle: TextStyle(
                     fontSize:12,
                     fontWeight: FontWeight.w500,
                     fontFamily: "Montserrat-Light.ttf",
                     color: Color(0xFF858585)
                 ),



                 indicator: RectangularIndicator(
                   // strokeWidth: ,
                   verticalPadding: 5,
                   bottomLeftRadius: 24,
                   bottomRightRadius: 24,
                   topLeftRadius: 24,
                   topRightRadius: 24,
                   color: Color(0xFFFF6B00),
                   paintingStyle: PaintingStyle.fill,
                 ),
                 physics: ScrollPhysics(),

               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 30),
               child: Text(
                 "Popular chef",
                 style: TextStyle(
                   fontSize:15,
                   fontWeight: FontWeight.w700,
                   fontFamily: "Montserrat",
                   color: Color(0xFF000000)
               ),),
             ),
             Padding(
               padding:  EdgeInsets.only(top: 13),
               child: SizedBox(
                 height: MediaQuery.of(context).size.height+60,
                 width: MediaQuery.of(context).size.width,
                 child: TabBarView(

                   children: [
                     SizedBox(
                       height: MediaQuery.of(context).size.height,
                       width: MediaQuery.of(context).size.width,
                       child: ListView(
                         physics: NeverScrollableScrollPhysics(),
                         children: [
                           SingleChildScrollView(
                             scrollDirection: Axis.horizontal,
                             child: Row(
                               children: [
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.black,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.yellow,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.orange,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.indigo,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.green,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),

                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 20,),
                             child: Container(

                               height: 20,
                               child: Row(
                                 children: [
                                   Text("Latest recipes",
                                     style: TextStyle(
                                         fontSize:15,
                                         fontWeight: FontWeight.w700,
                                         fontFamily: "Montserrat",
                                         color: Color(0xFF000000)
                                     ),),
                                   SizedBox(
                                     width: 200,
                                   ),

                                   Text("View more",
                                     style: TextStyle(
                                         fontSize:12,
                                         fontWeight: FontWeight.w400,
                                         fontFamily: "Montserrat-Light.ttf",
                                         color: Color(0xFF000000)
                                     ),),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             height: 860,
                             width:380,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 16),
                                   child: Container(
                                     height: 820,
                                     child: GridView.builder(
                                         physics:NeverScrollableScrollPhysics(),
                                         gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                                             crossAxisSpacing: 30,
                                             mainAxisSpacing: 30,
                                             maxCrossAxisExtent: 200),
                                         itemCount: 8,
                                         itemBuilder: (BuildContext ctx, index) {
                                           return Container(

                                             alignment: Alignment.center,
                                             decoration: BoxDecoration(
                                                 color: Colors.blue,
                                                 borderRadius: BorderRadius.circular(15)),
                                             child: Text("name"+index.toString()),
                                           );
                                         }),
                                   ),
                                 ),

                               ],
                             ),


                           ),
                         ],
                       ),
                     ),
                     SizedBox(
                       height: MediaQuery.of(context).size.height,
                       width: MediaQuery.of(context).size.width,
                       child: ListView(
                         physics: NeverScrollableScrollPhysics(),
                         children: [
                           SingleChildScrollView(
                             scrollDirection: Axis.horizontal,
                             child: Row(
                               children: [
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.black,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.yellow,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.orange,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.indigo,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.green,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),

                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 20,),
                             child: Container(

                               height: 20,
                               child: Row(
                                 children: [
                                   Text("Latest recipes",
                                     style: TextStyle(
                                         fontSize:15,
                                         fontWeight: FontWeight.w700,
                                         fontFamily: "Montserrat",
                                         color: Color(0xFF000000)
                                     ),),
                                   SizedBox(
                                     width: 200,
                                   ),

                                   Text("View more",
                                     style: TextStyle(
                                         fontSize:12,
                                         fontWeight: FontWeight.w400,
                                         fontFamily: "Montserrat-Light.ttf",
                                         color: Color(0xFF000000)
                                     ),),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             height: 860,
                             width:380,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 16),
                                   child: Container(
                                     height: 820,
                                     child: GridView.builder(
                                         physics:NeverScrollableScrollPhysics(),
                                         gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                                             crossAxisSpacing: 30,
                                             mainAxisSpacing: 30,
                                             maxCrossAxisExtent: 200),
                                         itemCount: 8,
                                         itemBuilder: (BuildContext ctx, index) {
                                           return Container(

                                             alignment: Alignment.center,
                                             decoration: BoxDecoration(
                                                 color: Colors.blue,
                                                 borderRadius: BorderRadius.circular(15)),
                                             child: Text("name"+index.toString()),
                                           );
                                         }),
                                   ),
                                 ),

                               ],
                             ),


                           ),
                         ],
                       ),
                     ),
                     SizedBox(
                       height: MediaQuery.of(context).size.height,
                       width: MediaQuery.of(context).size.width,
                       child: ListView(
                         physics: NeverScrollableScrollPhysics(),
                         children: [
                           SingleChildScrollView(
                             scrollDirection: Axis.horizontal,
                             child: Row(
                               children: [
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.black,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.yellow,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.orange,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.indigo,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.green,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),

                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 20,),
                             child: Container(

                               height: 20,
                               child: Row(
                                 children: [
                                   Text("Latest recipes",
                                     style: TextStyle(
                                         fontSize:15,
                                         fontWeight: FontWeight.w700,
                                         fontFamily: "Montserrat",
                                         color: Color(0xFF000000)
                                     ),),
                                   SizedBox(
                                     width: 200,
                                   ),

                                   Text("View more",
                                     style: TextStyle(
                                         fontSize:12,
                                         fontWeight: FontWeight.w400,
                                         fontFamily: "Montserrat-Light.ttf",
                                         color: Color(0xFF000000)
                                     ),),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             height: 860,
                             width:380,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 16),
                                   child: Container(
                                     height: 820,
                                     child: GridView.builder(
                                         physics:NeverScrollableScrollPhysics(),
                                         gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                                             crossAxisSpacing: 30,
                                             mainAxisSpacing: 30,
                                             maxCrossAxisExtent: 200),
                                         itemCount: 8,
                                         itemBuilder: (BuildContext ctx, index) {
                                           return Container(

                                             alignment: Alignment.center,
                                             decoration: BoxDecoration(
                                                 color: Colors.blue,
                                                 borderRadius: BorderRadius.circular(15)),
                                             child: Text("name"+index.toString()),
                                           );
                                         }),
                                   ),
                                 ),

                               ],
                             ),


                           ),
                         ],
                       ),
                     ),
                     SizedBox(
                   height: MediaQuery.of(context).size.height,
                   width: MediaQuery.of(context).size.width,
                   child: ListView(
                     physics: NeverScrollableScrollPhysics(),
                     children: [
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             SizedBox(
                               width: 29,
                             ),
                             Container(
                               height: 60,
                               width: 60,
                               // color:Color(0xFFFFF7F2)
                               decoration: BoxDecoration(
                                   color: Colors.black,
                                   border: Border.all(color: Colors.blue),
                                   borderRadius: BorderRadius.circular(30)
                               ),
                             ),
                             SizedBox(
                               width: 29,
                             ),
                             Container(
                               height: 60,
                               width: 60,
                               // color:Color(0xFFFFF7F2)
                               decoration: BoxDecoration(
                                   color: Colors.yellow,
                                   border: Border.all(color: Colors.blue),
                                   borderRadius: BorderRadius.circular(30)
                               ),
                             ),
                             SizedBox(
                               width: 29,
                             ),
                             Container(
                               height: 60,
                               width: 60,
                               // color:Color(0xFFFFF7F2)
                               decoration: BoxDecoration(
                                   color: Colors.orange,
                                   border: Border.all(color: Colors.blue),
                                   borderRadius: BorderRadius.circular(30)
                               ),
                             ),
                             SizedBox(
                               width: 29,
                             ),
                             Container(
                               height: 60,
                               width: 60,
                               // color:Color(0xFFFFF7F2)
                               decoration: BoxDecoration(
                                   color: Colors.indigo,
                                   border: Border.all(color: Colors.blue),
                                   borderRadius: BorderRadius.circular(30)
                               ),
                             ),
                             SizedBox(
                               width: 29,
                             ),
                             Container(
                               height: 60,
                               width: 60,
                               // color:Color(0xFFFFF7F2)
                               decoration: BoxDecoration(
                                   color: Colors.green,
                                   border: Border.all(color: Colors.blue),
                                   borderRadius: BorderRadius.circular(30)
                               ),
                             ),
                             SizedBox(
                               width: 29,
                             ),
                             Container(
                               height: 60,
                               width: 60,
                               // color:Color(0xFFFFF7F2)
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   border: Border.all(color: Colors.blue),
                                   borderRadius: BorderRadius.circular(30)
                               ),
                             ),

                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 20,),
                         child: Container(

                           height: 20,
                           child: Row(
                             children: [
                               Text("Latest recipes",
                                 style: TextStyle(
                                     fontSize:15,
                                     fontWeight: FontWeight.w700,
                                     fontFamily: "Montserrat",
                                     color: Color(0xFF000000)
                                 ),),
                               SizedBox(
                                 width: 200,
                               ),

                               Text("View more",
                                 style: TextStyle(
                                     fontSize:12,
                                     fontWeight: FontWeight.w400,
                                     fontFamily: "Montserrat-Light.ttf",
                                     color: Color(0xFF000000)
                                 ),),
                             ],
                           ),
                         ),
                       ),
                       Container(
                         height: 860,
                         width:380,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 16),
                               child: Container(
                                 height: 820,
                                 child: GridView.builder(
                                     physics:NeverScrollableScrollPhysics(),
                                     gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                                         crossAxisSpacing: 30,
                                         mainAxisSpacing: 30,
                                         maxCrossAxisExtent: 200),
                                     itemCount: 8,
                                     itemBuilder: (BuildContext ctx, index) {
                                       return Container(

                                         alignment: Alignment.center,
                                         decoration: BoxDecoration(
                                             color: Colors.blue,
                                             borderRadius: BorderRadius.circular(15)),
                                         child: Text("name"+index.toString()),
                                       );
                                     }),
                               ),
                             ),

                           ],
                         ),


                       ),
                     ],
                   ),
                 ),
                     SizedBox(
                       height: MediaQuery.of(context).size.height,
                       width: MediaQuery.of(context).size.width,
                       child: ListView(
                         physics: NeverScrollableScrollPhysics(),
                         children: [
                           SingleChildScrollView(
                             scrollDirection: Axis.horizontal,
                             child: Row(
                               children: [
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.black,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.yellow,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.orange,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.indigo,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.green,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),

                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 20,),
                             child: Container(

                               height: 20,
                               child: Row(
                                 children: [
                                   Text("Latest recipes",
                                     style: TextStyle(
                                         fontSize:15,
                                         fontWeight: FontWeight.w700,
                                         fontFamily: "Montserrat",
                                         color: Color(0xFF000000)
                                     ),),
                                   SizedBox(
                                     width: 200,
                                   ),

                                   Text("View more",
                                     style: TextStyle(
                                         fontSize:12,
                                         fontWeight: FontWeight.w400,
                                         fontFamily: "Montserrat-Light.ttf",
                                         color: Color(0xFF000000)
                                     ),),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             height: 860,
                             width:380,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 16),
                                   child: Container(
                                     height: 820,
                                     child: GridView.builder(
                                         physics:NeverScrollableScrollPhysics(),
                                         gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                                             crossAxisSpacing: 30,
                                             mainAxisSpacing: 30,
                                             maxCrossAxisExtent: 200),
                                         itemCount: 8,
                                         itemBuilder: (BuildContext ctx, index) {
                                           return Container(

                                             alignment: Alignment.center,
                                             decoration: BoxDecoration(
                                                 color: Colors.blue,
                                                 borderRadius: BorderRadius.circular(15)),
                                             child: Text("name"+index.toString()),
                                           );
                                         }),
                                   ),
                                 ),

                               ],
                             ),


                           ),
                         ],
                       ),
                     ),
                     SizedBox(
                       height: MediaQuery.of(context).size.height,
                       width: MediaQuery.of(context).size.width,
                       child: ListView(
                         physics: NeverScrollableScrollPhysics(),
                         children: [
                           SingleChildScrollView(
                             scrollDirection: Axis.horizontal,
                             child: Row(
                               children: [
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.black,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.yellow,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.orange,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.indigo,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.green,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),
                                 SizedBox(
                                   width: 29,
                                 ),
                                 Container(
                                   height: 60,
                                   width: 60,
                                   // color:Color(0xFFFFF7F2)
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       border: Border.all(color: Colors.blue),
                                       borderRadius: BorderRadius.circular(30)
                                   ),
                                 ),

                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 20,),
                             child: Container(

                               height: 20,
                               child: Row(
                                 children: [
                                   Text("Latest recipes",
                                     style: TextStyle(
                                         fontSize:15,
                                         fontWeight: FontWeight.w700,
                                         fontFamily: "Montserrat",
                                         color: Color(0xFF000000)
                                     ),),
                                   SizedBox(
                                     width: 200,
                                   ),

                                   Text("View more",
                                     style: TextStyle(
                                         fontSize:12,
                                         fontWeight: FontWeight.w400,
                                         fontFamily: "Montserrat-Light.ttf",
                                         color: Color(0xFF000000)
                                     ),),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             height: 860,
                             width:380,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 16),
                                   child: Container(
                                     height: 820,
                                     child: GridView.builder(
                                         physics:NeverScrollableScrollPhysics(),
                                         gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                                             crossAxisSpacing: 30,
                                             mainAxisSpacing: 30,
                                             maxCrossAxisExtent: 200),
                                         itemCount: 8,
                                         itemBuilder: (BuildContext ctx, index) {
                                           return Container(

                                             alignment: Alignment.center,
                                             decoration: BoxDecoration(
                                                 color: Colors.blue,
                                                 borderRadius: BorderRadius.circular(15)),
                                             child: Text("name"+index.toString()),
                                           );
                                         }),
                                   ),
                                 ),

                               ],
                             ),


                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),




           ],
         ),
         bottomNavigationBar: CurvedNavigationBar(
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
                   Icon(Icons.add, size: 30,color: Color(0xFFF86804)),
                   Text("Add",style: TextStyle(
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

                   Icon(Icons.perm_media, size: 30,color: Color(0xFFF86804)),
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

           },

       ),
       ),
       )
     );

   }
 }
 