import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';


import 'Pages/Home.dart';

 class DietandAllergiesPage extends StatefulWidget {
   const DietandAllergiesPage({Key? key}) : super(key: key);

   @override
   State<DietandAllergiesPage> createState() => _DietandAllergiesPageState();
 }

 class _DietandAllergiesPageState extends State<DietandAllergiesPage> {
   @override
   Widget build(BuildContext context) {
     final List<String> items = [
       'Item1',
       'Item2',
       'Item3',
       'Item4',
       'Item5',
       'Item6',
       'Item7',
       'Item8',
     ];
     String? selectedValue;
     return Scaffold(
       body: ListView(
         children: [
           Center(
             child: Padding(
               padding: const EdgeInsets.only(bottom: 39),
               child: SizedBox(
                 width: 100,
                 height: 100,
                 child: Stack(
                   children: <Widget>[
                     SizedBox(
                       width: 100,
                       height: 100,
                       child:
                       CircularProgressIndicator(
                         strokeWidth: 8,
                         value: .8,
                         color: Color(0xFFFF6B00),
                       ),
                     ),
                     Positioned(
                         bottom: 0,
                         left: 0,
                         right: 0,
                         top: 40,
                         child: Text(
                           'You',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                               fontSize:13,
                               fontWeight: FontWeight.w600,
                               fontFamily: "Montserrat",
                               color: Color(0xFF858585)
                           ),
                         )),
                   ],
                 ),
               ),
             ),
           ),


           Padding(
             padding: const EdgeInsets.only(bottom: 10),
             child: Text("Any allergies or diets?",
               textAlign: TextAlign.center,
               style: TextStyle(
                   fontSize:22,
                   fontWeight: FontWeight.w500,
                   fontFamily: "Montserrat",
                   color: Color(0xFF121212)
               ),
             ),
           ),


           Padding(
             padding: const EdgeInsets.only(bottom: 39),
             child: Text("We’ll show you recipes for your health",
               textAlign: TextAlign.center,
               style: TextStyle(
                   fontSize:14,
                   fontWeight: FontWeight.w500,
                   fontFamily: "Montserrat",
                   color:  Color(0xFF121212)
               ),
             ),
           ),
           Expanded(
             child: Container(
               
               child: DropdownButtonHideUnderline(
                 child: DropdownButton2(

                   isExpanded: true,

                   hint: Row(
                     children: const [

                       SizedBox(
                         width: 4,
                       ),
                       Expanded(
                         child: Center(
                           child: Text(
                             'Diets',
                             style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.bold,
                               color: Colors.black,
                                 fontFamily: 'Montserrat-Medium.ttf'
                             ),
                             // overflow: TextOverflow.ellipsis,
                           ),
                         ),
                       ),
                     ],
                   ),
                   items: [

                   ],
                   buttonDecoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(color: Colors.white),
                     color:Color(0xFFFFF7F2)
                   ),



                   icon: const Icon(
                     Icons.arrow_downward_sharp,
                   ),
                   barrierColor: Colors.blue,



                 ),
               ),
             ),
           ),
           SizedBox(
             height: 20,
           ),

           Expanded(
             child: Container(

               child: DropdownButtonHideUnderline(
                 child: DropdownButton2(

                   isExpanded: true,

                   hint: Row(
                     children: const [

                       SizedBox(
                         width: 4,
                       ),
                       Expanded(
                         child: Center(
                           child: Text(
                             'Allergies',
                             style: TextStyle(
                               fontSize: 15,
                               fontWeight: FontWeight.bold,
                               color: Colors.black,
                               fontFamily: 'Montserrat-Medium.ttf'
                             ),
                             overflow: TextOverflow.ellipsis,
                           ),
                         ),
                       ),
                     ],
                   ),
                   items: [

                   ],
                   buttonDecoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.white),
                       color:Color(0xFFFFF7F2)
                   ),



                   icon: const Icon(
                     Icons.arrow_downward_sharp,
                   ),
                   barrierColor: Colors.blue,



                 ),
               ),
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(top: 350,left: 10,right: 10),
             child: SizedBox(
               height: 50,
               width: 310,
               child: ElevatedButton(onPressed: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)
                   =>  Home(),
                   ),
                 );
               }, child: Text(
                 "Next",
                 style: TextStyle(
                     fontSize:20,
                     fontWeight: FontWeight.w600,
                     fontFamily: "Montserrat",
                     color: Colors.white
                 ),
               ),
                 style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(25),
                   ),
                 ),
               ),
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(bottom: 35),
             child: SizedBox(
               height: 40,
               width: 30,
               child: TextButton(
                   onPressed: (){},
                   child: Text("Skip",
                     style: TextStyle(
                         decoration: TextDecoration.underline,
                         fontSize:15,
                         fontWeight: FontWeight.w600,
                         fontFamily: "Montserrat",
                         color: Color(0xFF121212)
                     ),
                   )),
             ),
           ),
           Container(
             height: 60,
             width: MediaQuery.of(context).size.width+100,
             color: Colors.red,
           )




         ],
       ),

     );
   }
 }
