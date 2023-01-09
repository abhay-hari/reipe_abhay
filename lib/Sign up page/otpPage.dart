import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'ConfirmPassword.dart';


class OtpPageSample extends StatefulWidget {
  late String name ;
  late String phone ;
  late String email;
  OtpPageSample ({Key? key,required this.name,required this.phone,required this.email}) : super(key: key);

  @override
  State<OtpPageSample> createState() => _OtpPageSampleState();
}
class _OtpPageSampleState extends State<OtpPageSample> {


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
    right: MediaQuery.of(context).size.width/2+92,
    top: 138,

    ),
    Padding(
    padding: const EdgeInsets.only(
    top: 147,
    left: 38
    ),
    child: Text("Hi",style: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    fontFamily: "Montserrat"),),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 237, left: 24,right: 37),
    child: Text("Enter your OTP number send to ********",
      style: TextStyle(
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
      Padding(
        padding: const EdgeInsets.only(top: 337),
        child: Center(
          child: Text("Enter OTP",style: TextStyle(
            fontSize:20,
            fontWeight: FontWeight.w600,
              fontFamily: "Montserrat"
          ),),
        ),
      ),


    ],
    ),
    ),
          Padding(
            padding:  EdgeInsets.only(top: 10,right: 50,left: 50),
            // child:  OtpTextField(
            //     numberOfFields: 4,
            //     borderColor: Color(0xFF512DA8),
            //     focusedBorderColor: Colors.red,
            //     clearText: true,
            //     showFieldAsBox: true,
            //
            //     onCodeChanged: (String value) {
            //       //Handle each value
            //     },
            //     handleControllers: (controllers) {
            //       //get all textFields controller, if needed
            //
            //     },
            //     onSubmit: (String verificationCode) {
            //      setState(() {
            //
            //      });
            //           }
            //       );
            //     }
            // ),

            child: OtpTextField(
              obscureText: true,
              numberOfFields: 4,
              borderColor: Colors.red,
              showFieldAsBox: true,
              onSubmit: (String verificationCode){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Verification code"),
                    content: Text("Code entered is $verificationCode"),
                  );
                });
              }
            ),
          ),

          TextButton(onPressed: (){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text("OTP"),
                content: Text("Resend the Otp for your registerd number"),
              );
            });

          },
              child: Text("Resend OTP?")),
          TextButton(onPressed: (){}, child: Text("Re enter number")),
          Padding(
            padding: const EdgeInsets.only(top: 136,left: 20,right: 20),
            child: Container(
              height: 50,
              width:  328,
              child:
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ConfirmPassword()),
            );
            },

                  child: Text("Next",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight:   FontWeight.w600,
                    fontFamily: "Montserrat"
                  ),)),

            ),
          )



      ]
    ),
    ),
    );
  }
}
