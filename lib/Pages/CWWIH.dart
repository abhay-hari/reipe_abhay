//     GridView.builder(
//         physics: NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         itemCount: ingredianents.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 1,
//             mainAxisSpacing: 10,
//             childAspectRatio:1
//         ),
//         itemBuilder: ( context, index ){
//           return GestureDetector(
//             onTap: (){
//
//               setState(() {
//                 selectedcards[index].isSelected= !selectedcards[index].isSelected;
//                 if (selectedcards[index].isSelected==true){
//                   ingredianents.add(selectedcards[index]);
//                 }
//               });
//             },
//             child: Container(
//               height: 30,
//               width: 80,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(40),
//                 color: selectedcards[index].isSelected== true
//                     ? Colors.amber
//                     : Colors.white,),
//
//
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     selectedcards[index].name,
//                     style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 10,
//                         fontFamily: 'Montserrat-Light.ttf'
//                     ),
//                   ),
//                   Icon(selectedcards[index].isSelected == true
//                       ? Icons.remove
//                       : Icons.add
//
//                   ),
//
//                 ],
//               ),
//
//             ),
//           );
//
//         }
//
//
//
//   ],
// ),
import 'package:flutter/material.dart';
import 'package:reipe_abhay/Pages/From%20incre.dart';
import 'package:reipe_abhay/Pages/class/CWWIH%20card.dart';
import 'package:provider/provider.dart';


class CWWIH extends StatefulWidget {
  const CWWIH({Key? key}) : super(key: key);

  @override
  State<CWWIH> createState() => _CWWIHState();
}

class _CWWIHState extends State<CWWIH> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    void saveTask(CwwihCard task) {
      Provider.of<TaskProvider>(
          context, listen: false).addTasks(task);
      //This is where I am calling the function to add a task to the list.
      // The 'addTasks()' function is defined in the provider file which is just below
    }
    List<CwwihCard> listdata = Provider.of<TaskProvider>(context).listiems; // This is where the list is being accessed from the Provider file.
    return Scaffold(
      body: ListView(
        children: [
          Container(

            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){Navigator.of(context).pop();},
                    icon: Icon(Icons.arrow_back)),
                SizedBox(width: MediaQuery.of(context).size.width/15,),
                Text(
                  'Cook with what i have',
                  style: TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "ReadexProRegular.ttf",
                      color: Color(0xFF2B2B2B)
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,top: 16),
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width-50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  // color: Colors.red,
                  border: Border.all(color: Color(0xFFFF6B00)),

                ),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Montserrat-Light.ttf'
                  ),
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
                    fontFamily: 'Montserrat-Light.ttf',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF9F9F9F)
                  )
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,top: 20),
            child: Text(
              'Select upto 3 ingredients',
              style: TextStyle(
                fontSize:12,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat-Light.ttf",
                color: Color(0xFF858585),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45,left: 23),
            child: Text(
              'Added ingredients',
              style: TextStyle(
                fontSize:11,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat-Light.ttf",
                color: Color(0xFF858585),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10,left: 23,right: 23),
            child: GridView.builder(

                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ingredianents.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 21,
                    childAspectRatio: 4
                ),
                itemBuilder: ( context, index ){
                  return GestureDetector(
                    onTap: (){

                      setState(() {
                        ingredianents[index].isSelected= !ingredianents[index].isSelected;

                        CwwihCard c=ingredianents[index];
                        saveTask(c);



                      });
                    },
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: ingredianents[index].isSelected== true ? Colors.amber : Colors.white,),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ingredianents[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                fontFamily: 'Montserrat-Light.ttf'
                            ),
                          ),
                          Icon(ingredianents[index].isSelected == true
                              ? Icons.remove
                              : Icons.add
                              ,size: 9,
                          ),

                        ],
                      ),

                    ),
                  );

                }




      ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28,left: 23,),
            child: Text("Select the ingredients you have",
              style: TextStyle(
                fontSize:11,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat-Light.ttf",
                color: Color(0xFF858585),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 16,left: 23,right: 23),
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ingredianents.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 5,
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 21,

                ),
                itemBuilder: (context, index ){
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        ingredianents[index].isSelected= !ingredianents[index].isSelected;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: ingredianents[index].isSelected== true
                            ? Colors.amber
                            : Colors.white,),


                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ingredianents[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                fontFamily: 'Montserrat-Light.ttf'
                            ),
                          ),
                          Icon(ingredianents[index].isSelected == true
                              ?  Icons.remove
                              :  Icons.add,
                              size: 9
                          ),
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 97,left: 24,right: 24),
            child: SizedBox(
              height: 50,
              width: 310,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)
                  =>  FromIncre(),
                  ),
                );
              }, child: Text(
                "Continue",
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


        ],
      )
    );
  }
}


class TaskProvider extends ChangeNotifier { // This is the class where your data exists
// and this is the only place where your data should be manipulated! I explain the reason below...
  final List<CwwihCard> _listiems = [];

  List<CwwihCard> get listiems => _listiems;



  void addTasks(CwwihCard c) {
    _listiems.add(c); // This is simply how you add anything to a list
    notifyListeners(); // This is why we use providers. This function notifies all the children widgets

  }
}




