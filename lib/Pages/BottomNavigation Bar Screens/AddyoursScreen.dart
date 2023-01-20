import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:lottie/lottie.dart';

class AddYoursScreen extends StatefulWidget {
  const AddYoursScreen({Key? key}) : super(key: key);

  @override
  State<AddYoursScreen> createState() => _AddYoursScreenState();
}

class _AddYoursScreenState extends State<AddYoursScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:DefaultTabController(
        length: 2,
        child: ListView(
          shrinkWrap: true,
          children: [
            Text("Create your own recipes",
              style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Montserrat-Light.ttf",
                  color: Color(0xFF2D2D2D)
              ),
            ),
            TabBar(
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 1.5),
                    insets: EdgeInsets.symmetric(horizontal: 50)
                ),
                tabs: [
                  Text(
                    'Video',
                    style: TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat-Medium.ttf",
                        color: Color(0xFF2D2D2D)
                    ),
                  ),
                  Text(
                    'Article',
                    style: TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat-Medium.ttf",
                        color: Color(0xFF2D2D2D)
                    ),
                  ),
                ]

            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                  children: [
                    VideoUploadPage(),
                    ArticleUploadPage()
                  ]),
            ),
          ],
        )
        ),



    );
  }
}
class VideoUploadPage extends StatefulWidget {
  const VideoUploadPage({Key? key}) : super(key: key);

  @override
  State<VideoUploadPage> createState() => _VideoUploadPageState();
}

class _VideoUploadPageState extends State<VideoUploadPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
       children: [
         DottedBorder(
           borderType: BorderType.RRect,
           radius: Radius.circular(10),
           dashPattern: [2, 2],
           color: Color(0xFFFF6B00),
           strokeWidth: 1,
           child: Container(
             height: 237,
             width: 327,
             color: Colors.transparent,
             child: Center(
                 child:Column(
                 children: [
                     Lottie.asset("assets/lottie_animation/upload.json",width: 150,height: 150),
             Text("Upload your Article",
             style: TextStyle(
               fontFamily: 'Montserrat-Medium.ttf',
               fontWeight: FontWeight.w700,
               fontSize: 15,
               color: Color(0xFFCBCBCB)
             ),
             ),

                 ],
                 )
           ),
         )
         ),
         Text("Recipes title",
           style: TextStyle(
               fontFamily: 'Montserrat-Medium.ttf',
               fontWeight: FontWeight.w600,
               fontSize: 15,
               color: Color(0xFF2D2D2D)
           ),
         ),
         Container(
             height: 50,
             width: MediaQuery.of(context).size.width-50,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
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
                     labelText: "Type your recipes name here"
                     ,labelStyle: TextStyle(
                     fontFamily: "Montserrat.ttf",
                     fontSize: 12,
                     fontWeight: FontWeight.w400,
                     color: Color(0xFF9F9F9F)
                 )
                 ),
               ),
             )
         ),
       ],
     ),
    );
  }
}

class ArticleUploadPage extends StatefulWidget {
  const ArticleUploadPage({Key? key}) : super(key: key);

  @override
  State<ArticleUploadPage> createState() => _ArticleUploadPageState();
}

class _ArticleUploadPageState extends State<ArticleUploadPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          "Article"
      ),
    );
  }
}


