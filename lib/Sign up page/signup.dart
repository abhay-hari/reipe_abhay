import 'package:flutter/material.dart';
import 'otpPage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
 var myController = TextEditingController();
  var myController1 = TextEditingController();
  var myController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2-50,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Stack(
                children: [ Positioned(
                  child: Image.asset(
                      "assets/images/Ellipse.png"
                  ),
                  width: 50,
                  height: 50,
                  right: MediaQuery.of(context).size.width/2-10,
                  top: 142,
                ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 147,
                        left: 38
                    ),
                    child: Text("Welcome",style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat"),),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 237, left: 24,right: 37),
                    child:
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sag",
                      style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170,),
                    child:
                    Image.asset(
                        "assets/images/Vector.png"
                    ),
                  ),

                ],
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              height:MediaQuery.of(context).size.height/2-10,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(right: 20,left: 20),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    TextFormField(
                      controller:myController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: UnderlineInputBorder(),
                        labelText: "Name",
                        labelStyle: TextStyle(
                            fontSize:16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            color: Colors.grey),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only( top: 28),
                      child: TextFormField(
                        controller:myController1,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          border: UnderlineInputBorder(),
                          labelText: "Phone number",
                          labelStyle: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat",
                              color: Colors.grey),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: TextFormField(
                        controller:myController2,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: UnderlineInputBorder(),
                          labelText: "Email",
                          labelStyle: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat",
                              color: Colors.grey),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: SizedBox(
                        height: 50,
                        width: 328,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)
                            =>  OtpPageSample(
                              name:myController.text.toString(),
                                phone:myController1.text.toString(),
                                email:myController2.text.toString(),
                            ),
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
                      padding: const EdgeInsets.only(top:28,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text("Already have account?",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat",
                              color: Colors.grey
                          ),
                          ),

                          TextButton(onPressed: (){

                          },
                            child: Text("Log in",style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
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
      ),
    );
  }
}
