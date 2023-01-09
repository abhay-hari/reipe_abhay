import 'package:flutter/material.dart';
import 'package:reipe_abhay/Sign%20up%20page/signup.dart';



class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPageDetail(),

   );
  }
}

class LoginPageDetail extends StatefulWidget {
  const LoginPageDetail({Key? key}) : super(key: key);

  @override
  State<LoginPageDetail> createState() => _LoginPageDetailState();
}

class _LoginPageDetailState extends State<LoginPageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2-50,
              width: MediaQuery.of(context).size.width,
              child: Stack(

                children: [ Positioned(

                    child: Image.asset("assets/images/Ellipse.png"),
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
                    child: Text("Welcome\nBack!",style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat"),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 237, left: 24,right: 37),
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sag",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170,),
                    child: Image.asset("assets/images/Vector.png"),
                  ),

                ],
              ),
            ),
            Container(
            height:MediaQuery.of(context).size.height/2+50,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [

                Padding(
                  padding: const EdgeInsets.only(bottom: 40,top: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: UnderlineInputBorder(
                      ),
                      labelText: "Name",labelStyle: TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(bottom: 9),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_sharp),
                      suffixIcon : Icon(Icons.remove_red_eye),
                      border: UnderlineInputBorder(),
                      labelText: "Password",
                      labelStyle: TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),

                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(bottom: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){},
                        child: Text(
                          "Forget password?",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                      fontFamily: "Montserrat"),
                      ),
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(bottom: 54),
                  child: SizedBox(
                    height: 50,
                    width: 325,
                    child: ElevatedButton(onPressed: (){},
                      child: Text(
                        "Log in",
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
                   padding: const EdgeInsets.only(bottom: 48,left: 70,right: 70),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [

                       Text("Don’t have an account?",style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                         fontFamily: "Montserrat",
                         color: Colors.grey
                       ),
                       ),

                       TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(
                             builder: (context) => SignupPage()));
                       }, child: Text("Sign up",style: TextStyle(
                         fontSize: 12,
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
          ],
        ),
      ),
    );
  }
}
