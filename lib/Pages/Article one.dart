import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'class/class_article_1.dart';


class ArticleOne extends StatefulWidget {
  const ArticleOne({Key? key}) : super(key: key);

  @override
  State<ArticleOne> createState() => _ArticleOneState();
}

class _ArticleOneState extends State<ArticleOne> {
  @override
  Widget build(BuildContext context) {
    bool _isSelected=false;
    bool selected =false;


    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: ListView(
              physics: BouncingScrollPhysics(),
             shrinkWrap: true,
              children: [
                SizedBox(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.arrow_back)),
                      SizedBox(width: MediaQuery.of(context).size.width/12
                      ),
                      Expanded(
                        child: Text(
                          'Sheet pan sweet sour chicken',
                          style: TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat.ttf",
                              color: Color(0xFF2B2B2B)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            Padding(
              padding: const EdgeInsets.only(left: 19,right: 19,top: 30),
              child: SizedBox(
                width: 337,
                height: 76,
                   child: Stack(
                     children: [
                          Positioned(
                            top:6,
                            child: Container(
                             height: 70,
                             width: 337,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Color(0xFFFF6B00)),
                                 borderRadius: BorderRadius.circular(20)
                             ),
                              child: Container(
                               child: Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 16,bottom: 6),
                                     child: SizedBox(
                                         height: 47,
                                         width: 47,
                                         child: CircleAvatar()),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 12),
                                     child: Container(

                                       height: 36,
                                       width: 85,
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text(
                                             'Elsa jack',
                                             style: TextStyle(
                                                 fontSize:13,
                                                 fontWeight: FontWeight.w600,
                                                 fontFamily: "Montserrat.ttf",
                                                 color: Color(0xFF2D2D2D)
                                             ),
                                           ),
                                           SizedBox(height: 2,),
                                           Text(
                                             '8523 followers',
                                             style: TextStyle(
                                                 fontSize:10,
                                                 fontWeight: FontWeight.w600,
                                                 fontFamily: "Montserrat.ttf",
                                                 color: Color(0xFF8C8C8C)
                                             ),

                                           )
                                         ],
                                       ),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 79,bottom: 5),
                                     child: Container(
                                         height: 30,
                                         width: 86,
                                         decoration: BoxDecoration(

                                         ),
                                         child: ElevatedButton(
                                             style: ButtonStyle(
                                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                     RoundedRectangleBorder(
                                                         borderRadius: BorderRadius.circular(18.0),
                                                         side: BorderSide(color: Colors.red)
                                                     )
                                                 )
                                             ),
                                             onPressed: (){setState(() {
                                               setState(() {
                                                 _isSelected= !_isSelected;
                                                 print("hai");
                                               });
                                             });},
                                             child: Text(
                                               _isSelected==true
                                                   ? "Followed"
                                                   : "Follow",
                                               style: TextStyle(
                                                   fontSize:10,
                                                   fontWeight: FontWeight.w600,
                                                   fontFamily: "Montserrat-Light.ttf",
                                                   color: Color(0xFF000000)
                                               ),
                                             )
                                         )
                                     ),
                                   )
                                 ],
                               ),
                             ),
                         ),
                          ),
                       Positioned(
                         left: 36,

                         child: Container(
                           width: 56,
                           height: 12,
                           color: Colors.white,
                           child: Center(
                             child:Text(
                               'Recipe From',
                               style: TextStyle(
                                   fontSize:9,
                                   fontWeight: FontWeight.w600,
                                   fontFamily: "Montserrat-Light.ttf",
                                   color: Color(0xFFF86804)
                               ),
                             )
                           ),
                         ),
                       ),

                     ],
                   ),
                 ),
            ),
                Padding(
                  padding: const EdgeInsets.only(left: 27,top: 21),
                  child: Text(
                    'south indian item',
                    style: TextStyle(
                        fontSize:9,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Montserrat-Light.ttf",
                        color: Color(0xFF000000)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24,top: 39),
                  child: Container(
                    height: 237,
                    width: 327,
                    color: Colors.transparent,
                    child: Lottie.asset('assets/lottie_animation/videoplayer.json'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24,top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text(
      'Sheet pan sweet  sour chicken dinner|breakfast |lunch',
                          style: TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat.ttf",
                              color: Color(0xFF2B2B2B)
                          ),
                        ),
                      ),
                      Container(
                        height: 9,
                        width: 24,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Color(0xFFFF6B00),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(2))
                        ),


                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height:  6,
                                width: 6,
                                child: Image.asset("assets/icons/vegandnonveg/star.png")),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 7,
                                fontFamily: 'Montserrat-Light.ttf',
                                color: Color(0xFF2D2D2D),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7,left: 24),
                  child: Text(
                    '#southindianfood #indianfood #sourchicken',
                    style: TextStyle(
                        fontSize:12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Montserrat-Light.ttf",
                        color: Color(0xFF025AAB),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 11,right: 30),
                  child: Container(
                    height: 70,
                    width: 316,
                    color: Color(0xFFFFF7F2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 63,
                          child: Column(
                            children: [
                              IconButton(
                                  onPressed: (){
                                    setState(() {
                                      selected= true;
                                    });
                                  }, icon: Icon(
                                  selected==true
                                  ? Icons.thumb_up
                                      :Icons.thumb_up_off_alt
                              )),
                              Text(
                                'Like',
                                style: TextStyle(
                                    fontSize:11,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Montserrat-Light.ttf",
                                    color: Color(0xFF2B2B2B)
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 63,

                          child: Column(
                            children: [
                              IconButton(
                                  onPressed: (){
                                    setState(() {
                                      selected= !selected;
                                    });
                                  }, icon: Icon(
                                  selected==true
                                      ? Icons.thumb_down_alt
                                      :Icons.thumb_down_off_alt
                              ),
                              ),
                              Text(
                                'Dislike',
                                style: TextStyle(
                                    fontSize:11,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Montserrat-Light.ttf",
                                    color: Color(0xFF2B2B2B)
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 63,
                          child: Column(
                            children: [
                              IconButton(
                                  onPressed: (){}, icon: Icon(
                                  Icons.reply
                              ),
                              ),
                              Text(
                                'Share',
                                style: TextStyle(
                                    fontSize:11,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Montserrat-Light.ttf",
                                    color: Color(0xFF2B2B2B)
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 63,
                          child: Column(
                            children: [
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                   Icons.vertical_align_bottom
                                  ),
                              ),
                              Text(
                                'Download',
                                style: TextStyle(
                                    fontSize:11,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Montserrat-Light.ttf",
                                    color: Color(0xFF2B2B2B)
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 63,

                          child: Column(
                            children: [
                              IconButton(
                                  onPressed: (){
                                    setState(() {
                                      selected= true;
                                    });
                                  }, icon: Icon(
                                  selected==true
                                      ? Icons.turned_in
                                      :Icons.turned_in_not
                              )),
                              Text(
                                'save',
                                style: TextStyle(
                                    fontSize:11,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Montserrat-Regular.ttf",
                                    color: Color(0xFF2B2B2B)
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 13),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                  child :
                      Column(
                        children: [
                  TabBar(
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 1.5),
                      insets: EdgeInsets.symmetric(horizontal: 50)
                    ),
                      tabs: [
                        Text(
                          'ingredients',
                          style: TextStyle(
                              fontSize:14,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat-Medium.ttf",
                              color: Color(0xFF1A1A1A)
                          ),
                        ),
                        Text(
                          'Directions',
                          style: TextStyle(
                              fontSize:14,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat-Medium.ttf",
                              color: Color(0xFF1A1A1A)
                          ),
                        ),
                        Text(
                          'Review',
                          style: TextStyle(
                              fontSize:14,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat-Medium.ttf",
                              color: Color(0xFF1A1A1A)
                          ),
                        )
                      ]
                  )
                        ]
                      )
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: TabBarView(

                      children:[
                        Ingredientspage(),
                       Directionspage(),
                        Reviewpage()
                      ]
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Ingredientspage extends StatefulWidget {
  const Ingredientspage({Key? key}) : super(key: key);

  @override
  State<Ingredientspage> createState() => _IngredientspageState();
}
class _IngredientspageState extends State<Ingredientspage> {
  @override
  Widget build(BuildContext context) {
    int _counter =0;
    void _incrementCounter() {
      setState(() {
        _counter++;
      });
    }
    void _decrementCounter() {
      setState(() {
        _counter--;
      });
    }
    return
      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width-200,
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(left:96,top:16 ),
              child: Row(
                children: [
                  Text(
                    'Serving Adjust',
                    style: TextStyle(
                        fontSize:12,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat.ttf",
                        color: Color(0xFF494949)
                    ),
                  ),
                  IconButton(
                      onPressed: (){
                        _decrementCounter();
                      },
                      icon: Icon(Icons.remove)),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all( color: Color(0xFFFF6B00)),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child: Text(
                        '$_counter',
                        style: TextStyle(
                            fontSize:11,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Montserrat.ttf",
                            color: Color(0xFF6A6767)
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: (){
                        _incrementCounter();

                      },
                      icon: Icon(Icons.add)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 37),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: contents.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: ( context , i ) {
                    return ListTile(
                        leading: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFFFF6B00),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(2))
                          ),
                          child: Center(
                              child: Text(
                                contents[i].index.toString(),
                                style: TextStyle(
                                    fontSize:8,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Montserrat.ttf",
                                    color: Color(0xFF6A6767)
                                ),
                              )),

                        ),
                        title: Text(
                          contents[i].details,
                          style: TextStyle(
                              fontSize:11,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Montserrat-SemiBold.ttf",
                              color: Color(0xFF2B2B2B)
                          ),
                        )
                    );
                  }
              ),
            )

          ],
        ),
      );
  }
}




class Reviewpage extends StatelessWidget {
  const Reviewpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 227,
      width: MediaQuery.of(context).size.width-200,
      child: Column(
          children: [
            Expanded(
          child: ListView.builder(
          itemCount: details.length,
          itemBuilder: ( context , i ) {
        return  Padding(
          padding: const EdgeInsets.only(
            left: 23,
            right: 23,
          ),
          child: Container(
            height: 200,
            width: 330,
            child: Row(
              children: [
                Container(
                  height: 47,
                  width: 47,
                  decoration: BoxDecoration(
                    color: details[i].color,
                    borderRadius: BorderRadius.circular(25)
                  ),

                ),
                Expanded(
                  child: Container(

                    height: 95,
                    width: 270,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(details[i].name,
                                style: TextStyle(
                                    fontSize:11,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Montserrat-Light.ttf",
                                    color: Color(0xFF000000)
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.star,size: 12,color: Color(0xFFFF6B00),),
                                    Icon(Icons.star,size: 12,color: Color(0xFFFF6B00),),
                                    Icon(Icons.star,size: 12,color: Color(0xFFFF6B00),),
                                    Icon(Icons.star_border,size: 12,color: Color(0xFFFF6B00),),
                                    Icon(Icons.star_border,size: 12,color: Color(0xFFFF6B00),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13,top: 3),
                          child: Text("2 Days ago",
                            style: TextStyle(

                                fontSize:6,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Montserrat-Light.ttf",
                                color: Color(0xFF878787)

                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13,top: 3),
                          child: Expanded(
                            child: Text(details[i].review,
                              style: TextStyle(
                                  fontSize:11,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat-Light.ttf",
                                  color: Color(0xFF000000)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 220,top: 7),
                          child: Container(

                            height: 29,
                            width: 75,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFFF6B00))
                            ),
                            child: Center(
                              child: Text("Replays",
                                style: TextStyle(
                                    fontSize:12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Montserrat-Light.ttf",
                                    color: Color(0xFFFF6B00)
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        );
      }
      ),
      )

      ],
      ),
    );
  }
}


class Directionspage extends StatelessWidget {
  const Directionspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 227,
      width: MediaQuery.of(context).size.width-200,
      child: Column(
        children: [
            Expanded(
          child: ListView.builder(
          itemCount: direction.length,
          itemBuilder: ( context , i ) {
        return Container(

          width: 190,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                direction[i].step,
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat-Medium.ttf'
                ),
              ),
              Text(direction[i].details,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat-Medium.ttf'
              ),
              ),
              SizedBox(height: 10,)
            ],
          ),

            );

      }
      ),
      )

      ],
      ),
    );
  }
}

// ListTile(
// leading: Container(
// height: 12,
// width: 12,
// decoration: BoxDecoration(
// color: Colors.white,
// border: Border.all(
// color: Color(0xFFFF6B00),
// ),
// borderRadius: BorderRadius.all(Radius.circular(2))
// ),
// child: Center(
// child: Text(
// contents[i].index.toString(),
// style: TextStyle(
// fontSize:8,
// fontWeight: FontWeight.w700,
// fontFamily: "Montserrat.ttf",
// color: Color(0xFF6A6767)
// ),
// )),
//
// ),
// title: Text(
// contents[i].details,
// style: TextStyle(
// fontSize:11,
// fontWeight: FontWeight.w400,
// fontFamily: "Montserrat-SemiBold.ttf",
// color: Color(0xFF2B2B2B)
// ),
// )
// );