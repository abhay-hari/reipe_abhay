import 'package:flutter/material.dart';

import 'Diet and allergies.dart';

class Goalpage extends StatefulWidget {
  const Goalpage({Key? key}) : super(key: key);

  @override
  State<Goalpage> createState() => _GoalpageState();
}

class _GoalpageState extends State<Goalpage> {

  // List<String> images = [
  //   "assets/icons/goals2.png",
  //   "assets/icons/goals3.png",
  //   "assets/icons/goals4.png",
  //   "assets/icons/goals5.png",
  //   "assets/icons/goals6.png",
  //   "assets/icons/goals7.png"
  // ];
  @override
  Widget build(BuildContext context) {
    bool selectedList = false;

    return WillPopScope(
      onWillPop: ()async {
         return false;
        },
      child: Scaffold(
        body:  ListView(
          children: <Widget>[
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
             child: Text("What is your goal?",
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
             child: Text("Select what’s important to you",
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize:14,
                 fontWeight: FontWeight.w500,
                 fontFamily: "Montserrat",
                 color: Color(0xFF121212)
             ),
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(
                 bottom: 45,
                 left: 5,
                 right: 5
             ),
             child: SizedBox(
               height:379,
               width: 327,
               // color: Colors.cyan,
               child: GridView.builder(
                 shrinkWrap: true,
                 scrollDirection: Axis.vertical,
                 itemCount: 7,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,
                     crossAxisSpacing: 4,
                     mainAxisSpacing: 4,
                   ),
                   itemBuilder: (BuildContext context,int index){
                     return InkWell(
                         onTap: () => setState(() => selectedList = !selectedList),
                         child: SelectCard(index: index,));


                   }),
             ),
           ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
              child: SizedBox(
                height: 50,
                width: 310,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)
                    =>  DietandAllergiesPage(),
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
            )


      ],
        ),
      ),
    );
  }
}


class Choice {
  const Choice({required this.title, required this.image});
  final String title;
  final String image;
}

class SelectCard extends StatelessWidget {
   SelectCard({  Key? key, required this.index}) : super(key: key);
   final int index;

   List<Choice> choices = const <Choice>[
    const Choice(title: 'Get Inspired', image:  "assets/icons/goals1.png", ),
    const Choice(title: 'Eat Healthy', image:  "assets/icons/goals2.png",),
    const Choice(title: 'Budget Friendly',image:  "assets/icons/goals3.png",),
    const Choice(title: 'Plan better', image:  "assets/icons/goals4.png",),
    const Choice(title: 'Lern To Cook', image:  "assets/icons/goals5.png",),
    const Choice(title: 'Quick & Easy', image:  "assets/icons/goals6.png",),
    const Choice(title: 'One minute ', image:  "assets/icons/goals7.png",),

  ];
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Card(
        elevation: 5,
          color: Color(0xFFfafafa),
          child: Center(child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(child: Image.asset(choices[index].image,)),
                Text(choices[index].title, style:TextStyle(
                    fontSize:12,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Montserrat",
                    color: Color(0xFFFF6B00)
                ),

      )
                ]
                )
      )
      ),
    );
         
  }
}

