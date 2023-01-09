import 'package:flutter/material.dart';

import '../Splash screen.dart';




class ConfirmPassword extends StatefulWidget {

  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {

  final _formKey = GlobalKey<FormState>();
  String? value;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:SingleChildScrollView(
        child: ListView(
            shrinkWrap: true,
            children: [
        SizedBox(
        height: MediaQuery.of(context).size.height/2-50,
        width: MediaQuery.of(context).size.width,
        child: Stack(

          children: [ Positioned(

            child: Image.asset("assets/images/Ellipse.png"),
            width: 50,
            height: 50,
            right: MediaQuery.of(context).size.width/2+114,
            top: 138,

          ),
            Padding(
              padding: const EdgeInsets.only(left: 170,top: 6),
              child: Image.asset("assets/images/Vector.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 147,
                  left: 18
              ),
              child: Text("Hi",style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Montserrat"),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190, left: 19),
              child: Text("Create a strong password be to seccured",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                ),

              ),
            ),



          ],
        ),
      ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25,right: 25,top: 80),
                      child: TextFormField(
                        validator:( String? val) {
                          value = val;
                          if (value!.length >= 7 && value!.isEmpty)

                          {
                            return 'minimum 8 digits';
                          }
                          return null;
                          },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_open),
                          border: UnderlineInputBorder(),
                          labelText: "Create Password",
                          labelStyle: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ),
                    ),



              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 35),
                child: TextFormField(
                  validator:(String? value2) {
                    if (value!=value2 && value2!.isNotEmpty) {
                      return 'password is incorrect';
                    }
                    return null;
                    },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    border: UnderlineInputBorder(),
                    labelText: "re enter password",
                    labelStyle: TextStyle(
                        fontSize:16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ),
              ),
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SizedBox(
          height: 50,
          width: 325,
          child: ElevatedButton(
            onPressed: ()
            {
              if (_formKey.currentState!.validate())
              {Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => SplashScreenPage()),
              );
              }
          },
            child: Text(
              "Sign in",
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
                      padding: const EdgeInsets.only(left: 65,right: 65,top: 26),
                      child: Row(
                        children: [
                          Text("Already have accound?",
                            style: TextStyle(
                              fontSize:14,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat",
                              color: Colors.orange
                          ),),
                          TextButton(onPressed: (){},
                              child: Text("Log in",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  fontSize:15,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat",
                                  color: Colors.orange
                              ),
                              ),
                          ),

                        ],
                      ),
                    )



                  ]
                )
              ),
            ]
        ),
      )

    );

  }
}
